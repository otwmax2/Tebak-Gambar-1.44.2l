package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.SequenceInputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class h0 extends v4.w {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final File f25926o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final File f25927p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final NavigableMap<Long, File> f25928q = new TreeMap();

    h0(File file, File file2) throws IOException {
        this.f25926o = file;
        this.f25927p = file2;
        List<File> listA = d3.a(file, file2);
        if (listA.isEmpty()) {
            throw new d1(String.format("Virtualized slice archive empty for %s, %s", file, file2));
        }
        long length = 0;
        for (File file3 : listA) {
            this.f25928q.put(Long.valueOf(length), file3);
            length += file3.length();
        }
    }

    private final InputStream e(long j10, Long l10) throws IOException {
        FileInputStream fileInputStream = new FileInputStream((File) this.f25928q.get(l10));
        if (fileInputStream.skip(j10 - l10.longValue()) == j10 - l10.longValue()) {
            return fileInputStream;
        }
        throw new d1(String.format("Virtualized slice archive corrupt, could not skip in file with key %s", l10));
    }

    @Override // v4.w
    public final long b() {
        Map.Entry<Long, File> entryLastEntry = this.f25928q.lastEntry();
        return entryLastEntry.getKey().longValue() + entryLastEntry.getValue().length();
    }

    @Override // v4.w
    protected final InputStream c(long j10, long j11) throws IOException {
        if (j10 < 0 || j11 < 0) {
            throw new d1(String.format("Invalid input parameters %s, %s", Long.valueOf(j10), Long.valueOf(j11)));
        }
        long j12 = j10 + j11;
        if (j12 > b()) {
            throw new d1(String.format("Trying to access archive out of bounds. Archive ends at: %s. Tried accessing: %s", Long.valueOf(b()), Long.valueOf(j12)));
        }
        Long lFloorKey = this.f25928q.floorKey(Long.valueOf(j10));
        Long lFloorKey2 = this.f25928q.floorKey(Long.valueOf(j12));
        if (lFloorKey.equals(lFloorKey2)) {
            return new g0(e(j10, lFloorKey), j11);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(e(j10, lFloorKey));
        Collection<File> collectionValues = this.f25928q.subMap(lFloorKey, false, lFloorKey2, false).values();
        if (!collectionValues.isEmpty()) {
            arrayList.add(new s4.e(Collections.enumeration(collectionValues)));
        }
        arrayList.add(new g0(new FileInputStream((File) this.f25928q.get(lFloorKey2)), j11 - (lFloorKey2.longValue() - j10)));
        return new SequenceInputStream(Collections.enumeration(arrayList));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
