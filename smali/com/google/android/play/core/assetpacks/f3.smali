###### Class com.google.android.play.core.assetpacks.f3 (com.google.android.play.core.assetpacks.f3)
.class final Lcom/google/android/play/core/assetpacks/f3;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# static fields
.field private static final b:Lv4/a;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/e0;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lv4/a;

    const-string v1, "VerifySliceTaskHandler"

    invoke-direct {v0, v1}, Lv4/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/f3;->b:Lv4/a;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/e0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/f3;->a:Lcom/google/android/play/core/assetpacks/e0;

    return-void
.end method

.method private final b(Lcom/google/android/play/core/assetpacks/e3;Ljava/io/File;)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_2
    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/f3;->a:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v4, p1, Lcom/google/android/play/core/assetpacks/e3;->c:I

    iget-wide v5, p1, Lcom/google/android/play/core/assetpacks/e3;->d:J

    iget-object v7, p1, Lcom/google/android/play/core/assetpacks/e3;->e:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/play/core/assetpacks/e0;->B(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 3
    invoke-static {p2, v2}, Lcom/google/android/play/core/assetpacks/d3;->a(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object p2
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1a} :catch_81

    .line 4
    :try_start_1a
    invoke-static {p2}, Lcom/google/android/play/core/assetpacks/f2;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2
    :try_end_1e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1a .. :try_end_1e} :catch_62
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_4d

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/e3;->f:Ljava/lang/String;

    .line 5
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_39

    .line 6
    sget-object p2, Lcom/google/android/play/core/assetpacks/f3;->b:Lv4/a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/e3;->e:Ljava/lang/String;

    aput-object v3, v2, v0

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    aput-object p1, v2, v1

    const-string p1, "Verification of slice %s of pack %s successful."

    .line 7
    invoke-virtual {p2, p1, v2}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 8
    :cond_39
    new-instance p2, Lcom/google/android/play/core/assetpacks/d1;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/e3;->e:Ljava/lang/String;

    aput-object v2, v1, v0

    const-string v0, "Verification failed for slice %s."

    .line 9
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/y1;->a:I

    invoke-direct {p2, v0, p1}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;I)V

    throw p2

    :catch_4d
    move-exception p2

    new-instance v2, Lcom/google/android/play/core/assetpacks/d1;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/e3;->e:Ljava/lang/String;

    aput-object v3, v1, v0

    const-string v0, "Could not digest file during verification for slice %s."

    .line 10
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/y1;->a:I

    invoke-direct {v2, v0, p2, p1}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v2

    :catch_62
    move-exception p2

    .line 11
    new-instance v0, Lcom/google/android/play/core/assetpacks/d1;

    iget p1, p1, Lcom/google/android/play/core/assetpacks/y1;->a:I

    const-string v1, "SHA256 algorithm not supported."

    .line 12
    invoke-direct {v0, v1, p2, p1}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0

    .line 13
    :cond_6d
    :try_start_6d
    new-instance p2, Lcom/google/android/play/core/assetpacks/d1;

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/e3;->e:Ljava/lang/String;

    aput-object v3, v2, v0

    const-string v3, "Cannot find metadata files for slice %s."

    .line 14
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/google/android/play/core/assetpacks/y1;->a:I

    invoke-direct {p2, v2, v3}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;I)V

    throw p2
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_81} :catch_81

    :catch_81
    move-exception p2

    .line 15
    new-instance v2, Lcom/google/android/play/core/assetpacks/d1;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/e3;->e:Ljava/lang/String;

    aput-object v3, v1, v0

    const-string v0, "Could not reconstruct slice archive during verification for slice %s."

    .line 16
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/y1;->a:I

    invoke-direct {v2, v0, p2, p1}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v2
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/assetpacks/e3;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/f3;->a:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/e3;->c:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/e3;->d:J

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/e3;->e:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/e0;->C(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4b

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/play/core/assetpacks/f3;->b(Lcom/google/android/play/core/assetpacks/e3;Ljava/io/File;)V

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/f3;->a:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v6, p1, Lcom/google/android/play/core/assetpacks/e3;->c:I

    iget-wide v7, p1, Lcom/google/android/play/core/assetpacks/e3;->d:J

    iget-object v9, p1, Lcom/google/android/play/core/assetpacks/e3;->e:Ljava/lang/String;

    .line 4
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/play/core/assetpacks/e0;->D(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_30

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 7
    :cond_30
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_37

    return-void

    :cond_37
    new-instance v0, Lcom/google/android/play/core/assetpacks/d1;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/e3;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Failed to move slice %s after verification."

    .line 8
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/google/android/play/core/assetpacks/y1;->a:I

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4b
    new-instance v0, Lcom/google/android/play/core/assetpacks/d1;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/e3;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Cannot find unverified files for slice %s."

    .line 9
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/google/android/play/core/assetpacks/y1;->a:I

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
