package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.FileInputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class d3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f25849a = Pattern.compile("[0-9]+-(NAM|LFH)\\.dat");

    static List<File> a(File file, File file2) throws IOException {
        File[] fileArr;
        ArrayList arrayList = new ArrayList();
        File[] fileArrListFiles = file2.listFiles(new FilenameFilter() { // from class: com.google.android.play.core.assetpacks.c3
            @Override // java.io.FilenameFilter
            public final boolean accept(File file3, String str) {
                return d3.f25849a.matcher(str).matches();
            }
        });
        if (fileArrListFiles == null) {
            fileArr = new File[0];
        } else {
            File[] fileArr2 = new File[fileArrListFiles.length];
            for (File file3 : fileArrListFiles) {
                int i10 = Integer.parseInt(file3.getName().split("-")[0]);
                if (i10 > fileArrListFiles.length || fileArr2[i10] != null) {
                    throw new d1("Metadata folder ordering corrupt.");
                }
                fileArr2[i10] = file3;
            }
            fileArr = fileArr2;
        }
        for (File file4 : fileArr) {
            arrayList.add(file4);
            if (file4.getName().contains("LFH")) {
                FileInputStream fileInputStream = new FileInputStream(file4);
                try {
                    h3 h3VarC = new q0(fileInputStream).c();
                    if (h3VarC.c() == null) {
                        throw new d1("Metadata files corrupt. Could not read local file header.");
                    }
                    File file5 = new File(file, h3VarC.c());
                    if (!file5.exists()) {
                        throw new d1(String.format("Missing asset file %s during slice reconstruction.", file5.getCanonicalPath()));
                    }
                    arrayList.add(file5);
                    fileInputStream.close();
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable unused) {
                    }
                    throw th;
                }
            }
        }
        return arrayList;
    }
}
