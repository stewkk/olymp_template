
#include <bits/stdc++.h>

using namespace std;

bool binary_search(const vector<int>& arr, int l, int r, int el) {
    if (l + 1 == r) {
        return arr[l] == el;
    }
    int m = (l + r) / 2;
    if (el == arr[m]) {
        return true;
    }
    if (el > arr[m]) {
        return binary_search(arr, m, r, el);
    }
    return binary_search(arr, l, m, el);
}

int main() {
    int n, k;
    cin >> n >> k;
    vector<int> arr(n);
    for (auto& el : arr) {
        cin >> el;
    }
    vector<int> arr2(k);
    for (auto& el : arr2) {
        cin >> el;
    }
    for (auto& el : arr2) {
        cout << (binary_search(arr, 0, n, el) ? "YES" : "NO") << endl;
    }
    return 0;
}

