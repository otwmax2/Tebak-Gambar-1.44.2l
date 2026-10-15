package com.vungle.warren.utility;

import java.util.HashSet;

/* JADX INFO: loaded from: classes2.dex */
public class CollectionsConcurrencyUtil {
    public static synchronized void addToSet(HashSet hashSet, String str) {
        hashSet.add(str);
    }

    public static synchronized HashSet<String> getNewHashSet(HashSet<String> hashSet) {
        return new HashSet<>(hashSet);
    }
}
