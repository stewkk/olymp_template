#include <bits/stdc++.h>

using namespace std;

using ll = long long;

mt19937 mt_rand(chrono::steady_clock::now().time_since_epoch().count());

ll rnd(ll a, ll b){
    return a + mt_rand() % (b - a + 1);
}

int main() {
    ll a = rnd(1, 1e5);
    ll b = rnd(a + 1, 1e5);
    cout << a << ' ' << b << '\n';
    int n = 3;
    cout << n << '\n';

    vector<int> arr = {5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97};
    for (int i = 0; i < n; ++i) {
        cout << arr[rnd(0, arr.size() - 1)] << ' ';
    }
    return 0;
}
