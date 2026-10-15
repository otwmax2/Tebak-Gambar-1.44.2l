###### Class com.google.android.gms.internal.ads.zzfir (com.google.android.gms.internal.ads.zzfir)
.class public final Lcom/google/android/gms/internal/ads/zzfir;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public static a(I)Z
    .registers 2

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x4

    if-eq p0, v0, :cond_10

    const/4 v0, 0x5

    if-eq p0, v0, :cond_10

    const/4 v0, 0x6

    if-eq p0, v0, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    const/4 p0, 0x1

    return p0
.end method

.method public static final b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfhp;)I
    .registers 16

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "lib"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/16 v2, 0x1399

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-nez v1, :cond_2b

    const-string v0, "No lib/"

    .line 3
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfhp;->b(ILjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    :goto_27
    const/16 v0, 0x3e8

    goto/16 :goto_cc

    .line 4
    :cond_2b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfsn;

    const-string v10, ".*\\.so$"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 5
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/ads/zzfsn;-><init>(Ljava/util/regex/Pattern;)V

    .line 6
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_c5

    array-length v1, v0

    if-nez v1, :cond_42

    goto/16 :goto_c5

    .line 7
    :cond_42
    :try_start_42
    new-instance v1, Ljava/io/FileInputStream;

    const/4 v2, 0x0

    .line 8
    aget-object v0, v0, v2

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4a} :catch_bb

    const/16 v0, 0x14

    :try_start_4c
    new-array v10, v0, [B

    .line 9
    invoke-virtual {v1, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    if-ne v12, v0, :cond_61

    new-array v0, v11, [B

    aput-byte v2, v0, v2

    aput-byte v2, v0, v9

    aget-byte v12, v10, v7

    if-ne v12, v11, :cond_65

    .line 10
    invoke-static {v10, v6, p0, p1}, Lcom/google/android/gms/internal/ads/zzfir;->d([BLjava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfhp;)V
    :try_end_61
    .catchall {:try_start_4c .. :try_end_61} :catchall_9f

    .line 11
    :cond_61
    :goto_61
    :try_start_61
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_bb

    goto :goto_c3

    :cond_65
    const/16 v11, 0x13

    :try_start_67
    aget-byte v11, v10, v11

    aput-byte v11, v0, v2

    const/16 v11, 0x12

    aget-byte v11, v10, v11

    aput-byte v11, v0, v9

    .line 12
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    if-eq v0, v8, :cond_9a

    const/16 v11, 0x28

    if-eq v0, v11, :cond_95

    const/16 v11, 0x3e

    if-eq v0, v11, :cond_90

    const/16 v11, 0xb7

    if-eq v0, v11, :cond_8b

    .line 14
    invoke-static {v10, v6, p0, p1}, Lcom/google/android/gms/internal/ads/zzfir;->d([BLjava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfhp;)V
    :try_end_8a
    .catchall {:try_start_67 .. :try_end_8a} :catchall_9f

    goto :goto_61

    .line 15
    :cond_8b
    :try_start_8b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x6

    goto :goto_cc

    :cond_90
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x7

    goto :goto_cc

    :cond_95
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x3

    goto :goto_cc

    :cond_9a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_9d} :catch_bb

    const/4 v0, 0x5

    goto :goto_cc

    :catchall_9f
    move-exception v0

    .line 16
    :try_start_a0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_a4

    goto :goto_ba

    :catchall_a4
    move-exception v1

    :try_start_a5
    const-class v10, Ljava/lang/Throwable;

    const-string v11, "addSuppressed"

    new-array v12, v9, [Ljava/lang/Class;

    const-class v13, Ljava/lang/Throwable;

    aput-object v13, v12, v2

    .line 17
    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v1, v11, v2

    invoke-virtual {v10, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_ba} :catch_ba

    .line 18
    :catch_ba
    :goto_ba
    :try_start_ba
    throw v0
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bb} :catch_bb

    :catch_bb
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfir;->d([BLjava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfhp;)V

    :goto_c3
    const/4 v0, 0x1

    goto :goto_cc

    :cond_c5
    :goto_c5
    const-string v0, "No .so"

    .line 20
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfhp;->b(ILjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    goto/16 :goto_27

    :goto_cc
    if-ne v0, v5, :cond_11c

    .line 21
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfir;->c(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfhp;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_df

    const-string v0, "Empty dev arch"

    .line 23
    invoke-static {v6, v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfir;->d([BLjava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfhp;)V

    :goto_dd
    const/4 v0, 0x1

    goto :goto_11c

    :cond_df
    const-string v1, "i686"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11b

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f0

    goto :goto_11b

    :cond_f0
    const-string v1, "x86_64"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fa

    const/4 v0, 0x7

    goto :goto_11c

    :cond_fa
    const-string v1, "arm64-v8a"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_104

    const/4 v0, 0x6

    goto :goto_11c

    :cond_104
    const-string v1, "armeabi-v7a"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_119

    const-string v1, "armv71"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_115

    goto :goto_119

    .line 28
    :cond_115
    invoke-static {v6, v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfir;->d([BLjava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfhp;)V

    goto :goto_dd

    :cond_119
    :goto_119
    const/4 v0, 0x3

    goto :goto_11c

    :cond_11b
    :goto_11b
    const/4 v0, 0x5

    :cond_11c
    :goto_11c
    if-eq v0, v9, :cond_135

    if-eq v0, v8, :cond_132

    if-eq v0, v7, :cond_12f

    if-eq v0, v4, :cond_12c

    if-eq v0, v3, :cond_129

    const-string p0, "null"

    goto :goto_137

    :cond_129
    const-string p0, "X86_64"

    goto :goto_137

    :cond_12c
    const-string p0, "ARM64"

    goto :goto_137

    :cond_12f
    const-string p0, "X86"

    goto :goto_137

    :cond_132
    const-string p0, "ARM7"

    goto :goto_137

    :cond_135
    const-string p0, "UNSUPPORTED"

    :goto_137
    const/16 v1, 0x139a

    .line 29
    invoke-virtual {p1, v1, p0}, Lcom/google/android/gms/internal/ads/zzfhp;->b(ILjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    return v0
.end method

.method private static final c(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfhp;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance p0, Ljava/util/HashSet;

    const-string v0, "i686"

    const-string v1, "armv71"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfoi;->J:Lcom/google/android/gms/internal/ads/zzfoi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfoi;->c()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_25

    :cond_24
    return-object v0

    :cond_25
    :goto_25
    const-wide/16 v0, 0x0

    const/16 p0, 0x7e8

    :try_start_29
    const-class v2, Landroid/os/Build;

    const-string v3, "SUPPORTED_ABIS"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    if-eqz v2, :cond_4a

    array-length v3, v2

    if-lez v3, :cond_4a

    const/4 v3, 0x0

    .line 6
    aget-object p0, v2, v3
    :try_end_40
    .catch Ljava/lang/NoSuchFieldException; {:try_start_29 .. :try_end_40} :catch_46
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_40} :catch_41

    return-object p0

    :catch_41
    move-exception v2

    .line 7
    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfhp;->c(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    goto :goto_4a

    :catch_46
    move-exception v2

    .line 8
    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfhp;->c(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 9
    :cond_4a
    :goto_4a
    sget-object p0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    if-eqz p0, :cond_4f

    return-object p0

    :cond_4f
    sget-object p0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    return-object p0
.end method

.method private static final d([BLjava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfhp;)V
    .registers 7

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "os.arch:"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfoi;->J:Lcom/google/android/gms/internal/ads/zzfoi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfoi;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_18
    const-class v1, Landroid/os/Build;

    const-string v2, "SUPPORTED_ABIS"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_3a

    const-string v2, "supported_abis:"

    .line 5
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_38
    .catch Ljava/lang/NoSuchFieldException; {:try_start_18 .. :try_end_38} :catch_39
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_38} :catch_39

    goto :goto_3a

    :catch_39
    nop

    :cond_3a
    :goto_3a
    const-string v1, "CPU_ABI:"

    .line 6
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";CPU_ABI2:"

    .line 7
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_62

    const-string v1, "ELF:"

    .line 8
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_62
    if-eqz p1, :cond_6f

    const-string p0, "dbg:"

    .line 9
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6f
    const/16 p0, 0xfa7

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p3, p0, p1}, Lcom/google/android/gms/internal/ads/zzfhp;->b(ILjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
