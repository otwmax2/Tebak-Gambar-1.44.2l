package com.google.android.play.core.assetpacks;

import com.facebook.internal.Utility;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.io.SequenceInputStream;
import java.util.zip.GZIPInputStream;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class y0 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final v4.a f26187g = new v4.a("ExtractChunkTaskHandler");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f26188a = new byte[Utility.DEFAULT_STREAM_BUFFER_SIZE];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e0 f26189b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v4.y<u3> f26190c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final v4.y<y> f26191d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final h1 f26192e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final p2 f26193f;

    y0(e0 e0Var, v4.y<u3> yVar, v4.y<y> yVar2, h1 h1Var, p2 p2Var) {
        this.f26189b = e0Var;
        this.f26190c = yVar;
        this.f26191d = yVar2;
        this.f26192e = h1Var;
        this.f26193f = p2Var;
    }

    private final File b(x0 x0Var) {
        File fileC = this.f26189b.C(x0Var.f26195b, x0Var.f26162c, x0Var.f26163d, x0Var.f26165f);
        if (!fileC.exists()) {
            fileC.mkdirs();
        }
        return fileC;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.google.android.play.core.assetpacks.e0] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.io.InputStream] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void a(x0 x0Var) throws Throwable {
        InputStream inputStream;
        InputStream sequenceInputStream;
        h3 h3VarC;
        File fileC;
        long length;
        int iMin;
        int iMax;
        long j10;
        b3 b3Var = new b3(this.f26189b, x0Var.f26195b, x0Var.f26162c, x0Var.f26163d, x0Var.f26165f);
        ?? r10 = this.f26189b;
        File fileB = r10.B(x0Var.f26195b, x0Var.f26162c, x0Var.f26163d, x0Var.f26165f);
        if (!fileB.exists()) {
            fileB.mkdirs();
        }
        try {
            InputStream inputStream2 = x0Var.f26171l;
            InputStream gZIPInputStream = x0Var.f26166g != 1 ? inputStream2 : new GZIPInputStream(inputStream2, Utility.DEFAULT_STREAM_BUFFER_SIZE);
            try {
                try {
                    if (x0Var.f26167h > 0) {
                        a3 a3VarB = b3Var.b();
                        int iB = a3VarB.b();
                        int i10 = x0Var.f26167h;
                        if (iB != i10 - 1) {
                            throw new d1(String.format("Trying to resume with chunk number %s when previously processed chunk was number %s.", Integer.valueOf(i10), Integer.valueOf(a3VarB.b())), x0Var.f26194a);
                        }
                        int iA = a3VarB.a();
                        if (iA == 1) {
                            f26187g.a("Resuming zip entry from last chunk during file %s.", a3VarB.e());
                            File file = new File(a3VarB.e());
                            if (!file.exists()) {
                                throw new d1("Partial file specified in checkpoint does not exist. Corrupt directory.", x0Var.f26194a);
                            }
                            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                            randomAccessFile.seek(a3VarB.c());
                            long jD = a3VarB.d();
                            while (true) {
                                iMin = (int) Math.min(jD, 8192L);
                                iMax = Math.max(gZIPInputStream.read(this.f26188a, 0, iMin), 0);
                                if (iMax > 0) {
                                    randomAccessFile.write(this.f26188a, 0, iMax);
                                }
                                j10 = jD - ((long) iMax);
                                if (j10 <= 0 || iMax <= 0) {
                                    break;
                                } else {
                                    jD = j10;
                                }
                            }
                            long length2 = randomAccessFile.length();
                            randomAccessFile.close();
                            if (iMax != iMin) {
                                f26187g.a("Chunk has ended while resuming the previous chunks file content.", new Object[0]);
                                inputStream = gZIPInputStream;
                                b3Var.g(file.getCanonicalPath(), length2, j10, x0Var.f26167h);
                            }
                            inputStream = gZIPInputStream;
                            sequenceInputStream = inputStream;
                        } else if (iA == 2) {
                            f26187g.a("Resuming zip entry from last chunk during local file header.", new Object[0]);
                            File fileZ = this.f26189b.z(x0Var.f26195b, x0Var.f26162c, x0Var.f26163d, x0Var.f26165f);
                            if (!fileZ.exists()) {
                                throw new d1("Checkpoint extension file not found.", x0Var.f26194a);
                            }
                            inputStream = gZIPInputStream;
                            sequenceInputStream = new SequenceInputStream(new FileInputStream(fileZ), gZIPInputStream);
                        } else {
                            if (iA != 3) {
                                throw new d1(String.format("Slice checkpoint file corrupt. Unexpected FileExtractionStatus %s.", Integer.valueOf(a3VarB.a())), x0Var.f26194a);
                            }
                            f26187g.a("Resuming central directory from last chunk.", new Object[0]);
                            b3Var.d(gZIPInputStream, a3VarB.c());
                            if (!x0Var.a()) {
                                throw new d1("Chunk has ended twice during central directory. This should not be possible with chunk sizes of 50MB.", x0Var.f26194a);
                            }
                            inputStream = gZIPInputStream;
                        }
                        sequenceInputStream = null;
                    } else {
                        inputStream = gZIPInputStream;
                        sequenceInputStream = inputStream;
                    }
                    if (sequenceInputStream != null) {
                        q0 q0Var = new q0(sequenceInputStream);
                        File fileB2 = b(x0Var);
                        do {
                            h3VarC = q0Var.c();
                            if (!h3VarC.e() && !q0Var.d()) {
                                if (!h3VarC.h() || h3VarC.g()) {
                                    b3Var.k(h3VarC.f(), q0Var);
                                } else {
                                    b3Var.j(h3VarC.f());
                                    File file2 = new File(fileB2, h3VarC.c());
                                    file2.getParentFile().mkdirs();
                                    FileOutputStream fileOutputStream = new FileOutputStream(file2);
                                    int i11 = q0Var.read(this.f26188a, 0, Utility.DEFAULT_STREAM_BUFFER_SIZE);
                                    while (i11 > 0) {
                                        fileOutputStream.write(this.f26188a, 0, i11);
                                        i11 = q0Var.read(this.f26188a, 0, Utility.DEFAULT_STREAM_BUFFER_SIZE);
                                    }
                                    fileOutputStream.close();
                                }
                            }
                            if (q0Var.e()) {
                                break;
                            }
                        } while (!q0Var.d());
                        if (q0Var.d()) {
                            f26187g.a("Writing central directory metadata.", new Object[0]);
                            b3Var.k(h3VarC.f(), sequenceInputStream);
                        }
                        if (!x0Var.a()) {
                            if (h3VarC.e()) {
                                f26187g.a("Writing slice checkpoint for partial local file header.", new Object[0]);
                                b3Var.h(h3VarC.f(), x0Var.f26167h);
                            } else if (q0Var.d()) {
                                f26187g.a("Writing slice checkpoint for central directory.", new Object[0]);
                                b3Var.f(x0Var.f26167h);
                            } else {
                                if (h3VarC.a() == 0) {
                                    f26187g.a("Writing slice checkpoint for partial file.", new Object[0]);
                                    fileC = new File(b(x0Var), h3VarC.c());
                                    length = h3VarC.b() - q0Var.b();
                                    if (fileC.length() != length) {
                                        throw new d1("Partial file is of unexpected size.");
                                    }
                                } else {
                                    f26187g.a("Writing slice checkpoint for partial unextractable file.", new Object[0]);
                                    fileC = b3Var.c();
                                    length = fileC.length();
                                }
                                b3Var.g(fileC.getCanonicalPath(), length, q0Var.b(), x0Var.f26167h);
                            }
                        }
                    }
                    inputStream.close();
                    if (x0Var.a()) {
                        try {
                            b3Var.i(x0Var.f26167h);
                        } catch (IOException e10) {
                            f26187g.b("Writing extraction finished checkpoint failed with %s.", e10.getMessage());
                            throw new d1("Writing extraction finished checkpoint failed.", e10, x0Var.f26194a);
                        }
                    }
                    f26187g.d("Extraction finished for chunk %s of slice %s of pack %s of session %s.", Integer.valueOf(x0Var.f26167h), x0Var.f26165f, x0Var.f26195b, Integer.valueOf(x0Var.f26194a));
                    this.f26190c.zza().d(x0Var.f26194a, x0Var.f26195b, x0Var.f26165f, x0Var.f26167h);
                    try {
                        x0Var.f26171l.close();
                    } catch (IOException unused) {
                        f26187g.e("Could not close file for chunk %s of slice %s of pack %s.", Integer.valueOf(x0Var.f26167h), x0Var.f26165f, x0Var.f26195b);
                    }
                    if (x0Var.f26170k == 3) {
                        y yVarZza = this.f26191d.zza();
                        String str = x0Var.f26195b;
                        long j11 = x0Var.f26169j;
                        yVarZza.h(AssetPackState.h(str, 3, 0, j11, j11, this.f26192e.b(str, x0Var), 1, x0Var.f26164e, this.f26193f.a(x0Var.f26195b)));
                    }
                } catch (Throwable th) {
                    th = th;
                    try {
                        r10.close();
                    } catch (Throwable unused2) {
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                r10 = gZIPInputStream;
            }
        } catch (IOException e11) {
            f26187g.b("IOException during extraction %s.", e11.getMessage());
            throw new d1(String.format("Error extracting chunk %s of slice %s of pack %s of session %s.", Integer.valueOf(x0Var.f26167h), x0Var.f26165f, x0Var.f26195b, Integer.valueOf(x0Var.f26194a)), e11, x0Var.f26194a);
        }
    }
}
