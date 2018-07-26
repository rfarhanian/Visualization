package service;

import dao.CountryDao;
import domain.Country;

import java.lang.reflect.Method;
import java.util.*;

public class CountryService {

    private static CountryService INSTANCE = new CountryService();
    private List<Country> countries;
    private Map<String, Country> countryMap;
    private CountryDao instance = CountryDao.getInstance();

    private CountryService() {
        init();
    }

    public static CountryService getInstance() {
        return INSTANCE;
    }

    private void init() {
        this.countryMap = instance.getCountryMap();
        countries = new LinkedList<Country>(countryMap.values());
    }

    public Country load(final String name) {
        return countryMap.get(name);
    }

    public List<String> loadCountryNames() {
        List<String> names = new LinkedList<>();
        for (Country country : countries) {
            names.add(country.getName());
        }
        return names;
    }

    public List<String> loadCountryNames(final String sortField, boolean ascending) {
        List<String> names = new LinkedList<>();
        List<Country> countries = load(sortField, ascending);
        for (Country country : countries) {
            names.add(country.getName());
        }
        return names;
    }

    public List<Country> load(final String sortField, boolean ascending) {
        final int factor = ascending ? 1 : -1;
        List<Country> countriesList = new LinkedList<Country>(this.countries);
        Collections.sort(countriesList, new Comparator<Country>() {
            public int compare(Country o1, Country o2) {
                String methodName = "get" + sortField.substring(0, 1).toUpperCase() + sortField.substring(1);
                try {
                    Method method = o1.getClass().getMethod(methodName);
                    Object dis = method.invoke(o1);
                    Object that = method.invoke(o2);
                    if (dis == null && that == null) {
                        return 0 * factor;
                    } else if (dis == null) {
                        return -1 * factor;
                    } else if (that == null) {
                        return +1 * factor;
                    }
                    Comparable comparableDis = (Comparable) dis;
                    Comparable comparableThat = (Comparable) that;
                    //noinspection unchecked
                    return (comparableDis.compareTo(comparableThat)) * factor;
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            }
        });
        return countriesList;
    }
}
