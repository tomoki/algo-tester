// #ifdef DEBUG
// #define _GLIBCXX_DEBUG
// #endif
#include <iostream>
#include <iomanip>
#include <vector>
#include <valarray>
#include <map>
#include <set>
#include <list>
#include <queue>
#include <stack>
#include <bitset>
#include <utility>
#include <numeric>
#include <algorithm>
#include <functional>
#include <complex>
#include <string>
#include <sstream>

#include <cstdio>
#include <cstdlib>
#include <cctype>
#include <cstring>

// these require C++11
#include <unordered_set>
#include <unordered_map>
#include <random>

using namespace std;

#define int long long

#define all(c) c.begin(), c.end()
#define repeat(i, n) for (int i = 0; i < static_cast<int>(n); i++)
#define debug(x) #x << "=" << (x)

#ifdef DEBUG
#define _GLIBCXX_DEBUG
#define dump(x) std::cerr << debug(x) << " (L:" << __LINE__ << ")" << std::endl
#else
#define dump(x) 
#endif

typedef complex<double> point;

template<typename T,std::size_t N>
struct _v_traits {using type = std::vector<typename _v_traits<T,N-1>::type>;};
template<typename T>
struct _v_traits<T,1> {using type = std::vector<T>;};
template<typename T,std::size_t N=1>
using vec = typename _v_traits<T,N>::type;

// template<typename T,std::size_t N,typename Size,typename... Sizes>
// vec<T,N> make_vector(T init,Size size,Sizes... sizes){
//     return vec<T,N>(size,make_vector(init,sizes...));
// }
// template<typename T,typename Size,typename... Sizes>
// vec<T,1> make_vector(T init,Size size,Sizes... sizes){
//     return vec<T,1>(size,init);
// }

template <typename T>
ostream &operator<<(ostream &os, const vector<T> &vec) {
    os << "[";
    for (const auto &v : vec) {
        os << v << ",";
    }
    os << "]";
    return os;
}

signed main() {
    ios::sync_with_stdio(false);
    cin.tie(0);
    return 0;
}
