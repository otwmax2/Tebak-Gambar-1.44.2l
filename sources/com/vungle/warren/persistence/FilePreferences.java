package com.vungle.warren.persistence;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import com.vungle.warren.VungleLogger;
import com.vungle.warren.utility.CollectionsConcurrencyUtil;
import com.vungle.warren.utility.FileUtility;
import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public class FilePreferences {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f28248a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f28249b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ConcurrentHashMap<String, Object> f28250c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SharedPreferences f28251d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashSet<String> f28252e;

    @SuppressLint({"NewApi"})
    public FilePreferences(Context context, Executor executor) throws Throwable {
        ConcurrentHashMap<String, Object> concurrentHashMap = new ConcurrentHashMap<>();
        this.f28250c = concurrentHashMap;
        this.f28252e = new HashSet<>();
        this.f28249b = executor;
        File file = new File(context.getNoBackupFilesDir(), "vungle_settings");
        this.f28248a = file;
        File file2 = new File(context.getFilesDir(), "vungle_settings");
        if (file2.exists() && !file2.renameTo(file)) {
            VungleLogger.error("FilePreferences", "Can't move old FilePreferences");
        }
        Object serializable = FileUtility.readSerializable(file);
        if (serializable instanceof HashMap) {
            concurrentHashMap.putAll((HashMap) serializable);
        }
        this.f28251d = context.getSharedPreferences("com.vungle.sdk", 0);
        b();
    }

    private void b() {
        for (Map.Entry<String, ?> entry : this.f28251d.getAll().entrySet()) {
            Object value = entry.getValue();
            if (value instanceof Boolean) {
                put(entry.getKey(), ((Boolean) value).booleanValue());
            } else if (value instanceof String) {
                put(entry.getKey(), (String) value);
            } else if (value instanceof Integer) {
                put(entry.getKey(), ((Integer) value).intValue());
            } else if (value instanceof HashSet) {
                put(entry.getKey(), (HashSet<String>) value);
            }
        }
        this.f28251d.edit().clear().apply();
        apply();
    }

    public FilePreferences addSharedPrefsKey(String... strArr) {
        this.f28252e.addAll(Arrays.asList(strArr));
        return this;
    }

    public void apply() {
        final HashMap map = new HashMap(this.f28250c);
        this.f28249b.execute(new Runnable() { // from class: com.vungle.warren.persistence.FilePreferences.1
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                FileUtility.writeSerializable(FilePreferences.this.f28248a, map);
            }
        });
    }

    public boolean getBoolean(String str, boolean z10) {
        Object obj = this.f28250c.get(str);
        return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : z10;
    }

    public int getInt(String str, int i10) {
        Object obj = this.f28250c.get(str);
        return obj instanceof Integer ? ((Integer) obj).intValue() : i10;
    }

    public String getString(String str, String str2) {
        Object obj = this.f28250c.get(str);
        return obj instanceof String ? (String) obj : str2;
    }

    public HashSet<String> getStringSet(String str, HashSet<String> hashSet) {
        Object obj = this.f28250c.get(str);
        return obj instanceof HashSet ? CollectionsConcurrencyUtil.getNewHashSet((HashSet) obj) : hashSet;
    }

    public FilePreferences put(String str, boolean z10) {
        this.f28250c.put(str, Boolean.valueOf(z10));
        if (this.f28252e.contains(str)) {
            this.f28251d.edit().putBoolean(str, z10).apply();
        }
        return this;
    }

    public FilePreferences put(String str, String str2) {
        this.f28250c.put(str, str2);
        if (this.f28252e.contains(str)) {
            this.f28251d.edit().putString(str, str2).apply();
        }
        return this;
    }

    public FilePreferences put(String str, int i10) {
        this.f28250c.put(str, Integer.valueOf(i10));
        if (this.f28252e.contains(str)) {
            this.f28251d.edit().putInt(str, i10).apply();
        }
        return this;
    }

    public FilePreferences put(String str, HashSet<String> hashSet) {
        this.f28250c.put(str, CollectionsConcurrencyUtil.getNewHashSet(hashSet));
        if (this.f28252e.contains(str)) {
            this.f28251d.edit().putStringSet(str, CollectionsConcurrencyUtil.getNewHashSet(hashSet)).apply();
        }
        return this;
    }
}
