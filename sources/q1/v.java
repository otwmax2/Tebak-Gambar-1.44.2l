package q1;

import android.os.Build;
import i1.c;
import i1.s;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.Iterator;

/* JADX INFO: compiled from: WorkTypeConverters.java */
/* JADX INFO: loaded from: classes.dex */
public class v {

    /* JADX INFO: compiled from: WorkTypeConverters.java */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f33828a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f33829b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final /* synthetic */ int[] f33830c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final /* synthetic */ int[] f33831d;

        static {
            int[] iArr = new int[i1.n.values().length];
            f33831d = iArr;
            try {
                iArr[i1.n.RUN_AS_NON_EXPEDITED_WORK_REQUEST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33831d[i1.n.DROP_WORK_REQUEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[i1.k.values().length];
            f33830c = iArr2;
            try {
                iArr2[i1.k.NOT_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33830c[i1.k.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f33830c[i1.k.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f33830c[i1.k.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f33830c[i1.k.METERED.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[i1.a.values().length];
            f33829b = iArr3;
            try {
                iArr3[i1.a.EXPONENTIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f33829b[i1.a.LINEAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            int[] iArr4 = new int[s.a.values().length];
            f33828a = iArr4;
            try {
                iArr4[s.a.ENQUEUED.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f33828a[s.a.RUNNING.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f33828a[s.a.SUCCEEDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f33828a[s.a.FAILED.ordinal()] = 4;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f33828a[s.a.BLOCKED.ordinal()] = 5;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f33828a[s.a.CANCELLED.ordinal()] = 6;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    public static int a(i1.a aVar) {
        int i10 = a.f33829b[aVar.ordinal()];
        if (i10 == 1) {
            return 0;
        }
        if (i10 == 2) {
            return 1;
        }
        throw new IllegalArgumentException("Could not convert " + aVar + " to int");
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x005a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static i1.c b(byte[] r6) throws java.lang.Throwable {
        /*
            i1.c r0 = new i1.c
            r0.<init>()
            if (r6 != 0) goto L8
            return r0
        L8:
            java.io.ByteArrayInputStream r1 = new java.io.ByteArrayInputStream
            r1.<init>(r6)
            r6 = 0
            java.io.ObjectInputStream r2 = new java.io.ObjectInputStream     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L3d
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L3d
            int r6 = r2.readInt()     // Catch: java.io.IOException -> L37 java.lang.Throwable -> L57
        L17:
            if (r6 <= 0) goto L2b
            java.lang.String r3 = r2.readUTF()     // Catch: java.io.IOException -> L37 java.lang.Throwable -> L57
            android.net.Uri r3 = android.net.Uri.parse(r3)     // Catch: java.io.IOException -> L37 java.lang.Throwable -> L57
            boolean r4 = r2.readBoolean()     // Catch: java.io.IOException -> L37 java.lang.Throwable -> L57
            r0.a(r3, r4)     // Catch: java.io.IOException -> L37 java.lang.Throwable -> L57
            int r6 = r6 + (-1)
            goto L17
        L2b:
            r2.close()     // Catch: java.io.IOException -> L2f
            goto L33
        L2f:
            r6 = move-exception
            r6.printStackTrace()
        L33:
            r1.close()     // Catch: java.io.IOException -> L52
            goto L56
        L37:
            r6 = move-exception
            goto L41
        L39:
            r0 = move-exception
            r2 = r6
            r6 = r0
            goto L58
        L3d:
            r2 = move-exception
            r5 = r2
            r2 = r6
            r6 = r5
        L41:
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L57
            if (r2 == 0) goto L4e
            r2.close()     // Catch: java.io.IOException -> L4a
            goto L4e
        L4a:
            r6 = move-exception
            r6.printStackTrace()
        L4e:
            r1.close()     // Catch: java.io.IOException -> L52
            goto L56
        L52:
            r6 = move-exception
            r6.printStackTrace()
        L56:
            return r0
        L57:
            r6 = move-exception
        L58:
            if (r2 == 0) goto L62
            r2.close()     // Catch: java.io.IOException -> L5e
            goto L62
        L5e:
            r0 = move-exception
            r0.printStackTrace()
        L62:
            r1.close()     // Catch: java.io.IOException -> L66
            goto L6a
        L66:
            r0 = move-exception
            r0.printStackTrace()
        L6a:
            goto L6c
        L6b:
            throw r6
        L6c:
            goto L6b
        */
        throw new UnsupportedOperationException("Method not decompiled: q1.v.b(byte[]):i1.c");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.ObjectOutputStream] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x0067 -> B:35:0x006a). Please report as a decompilation issue!!! */
    public static byte[] c(i1.c cVar) throws Throwable {
        ObjectOutputStream objectOutputStream;
        boolean zHasNext;
        ?? r12 = 0;
        ObjectOutputStream objectOutputStream2 = null;
        r12 = 0;
        if (cVar.c() == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                try {
                    objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                } catch (Throwable th) {
                    th = th;
                }
            } catch (IOException e10) {
                e = e10;
            }
            try {
                objectOutputStream.writeInt(cVar.c());
                Iterator<c.a> it = cVar.b().iterator();
                while (true) {
                    zHasNext = it.hasNext();
                    if (zHasNext) {
                        c.a next = it.next();
                        objectOutputStream.writeUTF(next.a().toString());
                        objectOutputStream.writeBoolean(next.b());
                    } else {
                        try {
                            break;
                        } catch (IOException e11) {
                            e11.printStackTrace();
                        }
                    }
                }
                objectOutputStream.close();
                byteArrayOutputStream.close();
                r12 = zHasNext;
            } catch (IOException e12) {
                e = e12;
                objectOutputStream2 = objectOutputStream;
                e.printStackTrace();
                if (objectOutputStream2 != null) {
                    try {
                        objectOutputStream2.close();
                    } catch (IOException e13) {
                        e13.printStackTrace();
                    }
                }
                byteArrayOutputStream.close();
                r12 = objectOutputStream2;
            } catch (Throwable th2) {
                th = th2;
                r12 = objectOutputStream;
                if (r12 != 0) {
                    try {
                        r12.close();
                    } catch (IOException e14) {
                        e14.printStackTrace();
                    }
                }
                try {
                    byteArrayOutputStream.close();
                    throw th;
                } catch (IOException e15) {
                    e15.printStackTrace();
                    throw th;
                }
            }
        } catch (IOException e16) {
            e16.printStackTrace();
            r12 = r12;
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static i1.a d(int i10) {
        if (i10 == 0) {
            return i1.a.EXPONENTIAL;
        }
        if (i10 == 1) {
            return i1.a.LINEAR;
        }
        throw new IllegalArgumentException("Could not convert " + i10 + " to BackoffPolicy");
    }

    public static i1.k e(int i10) {
        if (i10 == 0) {
            return i1.k.NOT_REQUIRED;
        }
        if (i10 == 1) {
            return i1.k.CONNECTED;
        }
        if (i10 == 2) {
            return i1.k.UNMETERED;
        }
        if (i10 == 3) {
            return i1.k.NOT_ROAMING;
        }
        if (i10 == 4) {
            return i1.k.METERED;
        }
        if (Build.VERSION.SDK_INT >= 30 && i10 == 5) {
            return i1.k.TEMPORARILY_UNMETERED;
        }
        throw new IllegalArgumentException("Could not convert " + i10 + " to NetworkType");
    }

    public static i1.n f(int i10) {
        if (i10 == 0) {
            return i1.n.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
        }
        if (i10 == 1) {
            return i1.n.DROP_WORK_REQUEST;
        }
        throw new IllegalArgumentException("Could not convert " + i10 + " to OutOfQuotaPolicy");
    }

    public static s.a g(int i10) {
        if (i10 == 0) {
            return s.a.ENQUEUED;
        }
        if (i10 == 1) {
            return s.a.RUNNING;
        }
        if (i10 == 2) {
            return s.a.SUCCEEDED;
        }
        if (i10 == 3) {
            return s.a.FAILED;
        }
        if (i10 == 4) {
            return s.a.BLOCKED;
        }
        if (i10 == 5) {
            return s.a.CANCELLED;
        }
        throw new IllegalArgumentException("Could not convert " + i10 + " to State");
    }

    public static int h(i1.k kVar) {
        int i10 = a.f33830c[kVar.ordinal()];
        if (i10 == 1) {
            return 0;
        }
        if (i10 == 2) {
            return 1;
        }
        if (i10 == 3) {
            return 2;
        }
        if (i10 == 4) {
            return 3;
        }
        if (i10 == 5) {
            return 4;
        }
        if (Build.VERSION.SDK_INT >= 30 && kVar == i1.k.TEMPORARILY_UNMETERED) {
            return 5;
        }
        throw new IllegalArgumentException("Could not convert " + kVar + " to int");
    }

    public static int i(i1.n nVar) {
        int i10 = a.f33831d[nVar.ordinal()];
        if (i10 == 1) {
            return 0;
        }
        if (i10 == 2) {
            return 1;
        }
        throw new IllegalArgumentException("Could not convert " + nVar + " to int");
    }

    public static int j(s.a aVar) {
        switch (a.f33828a[aVar.ordinal()]) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case 6:
                return 5;
            default:
                throw new IllegalArgumentException("Could not convert " + aVar + " to int");
        }
    }
}
