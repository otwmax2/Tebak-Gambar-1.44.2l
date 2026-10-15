###### Class net.lingala.zip4j.unzip.UnzipUtil (net.lingala.zip4j.unzip.UnzipUtil)
.class public Lnet/lingala/zip4j/unzip/UnzipUtil;
.super Ljava/lang/Object;
.source "UnzipUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;Lnet/lingala/zip4j/model/UnzipParameters;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p0, :cond_5f

    if-eqz p1, :cond_57

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4f

    if-eqz p2, :cond_12

    .line 2
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/UnzipParameters;->c()Z

    move-result v0

    if-nez v0, :cond_15

    .line 3
    :cond_12
    invoke-static {p0, p1}, Lnet/lingala/zip4j/unzip/UnzipUtil;->c(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;)V

    :cond_15
    if-nez p2, :cond_21

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    .line 4
    invoke-static/range {v1 .. v6}, Lnet/lingala/zip4j/unzip/UnzipUtil;->b(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;ZZZZ)V

    goto :goto_4e

    .line 5
    :cond_21
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/UnzipParameters;->a()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 6
    invoke-static/range {v1 .. v6}, Lnet/lingala/zip4j/unzip/UnzipUtil;->b(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;ZZZZ)V

    goto :goto_4e

    .line 7
    :cond_31
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/UnzipParameters;->e()Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/UnzipParameters;->d()Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/UnzipParameters;->b()Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/UnzipParameters;->f()Z

    move-result p2

    xor-int/lit8 v6, p2, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lnet/lingala/zip4j/unzip/UnzipUtil;->b(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;ZZZZ)V

    :goto_4e
    return-void

    .line 8
    :cond_4f
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "cannot set file properties: file doesnot exist"

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_57
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "cannot set file properties: output file is null"

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_5f
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "cannot set file properties: file header is null"

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;ZZZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p0, :cond_7c

    .line 1
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/FileHeader;->h()[B

    move-result-object p0

    if-nez p0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 2
    aget-byte p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_76

    const/4 v0, 0x2

    if-eq p0, v0, :cond_70

    const/4 v0, 0x3

    if-eq p0, v0, :cond_65

    const/16 v0, 0x12

    if-eq p0, v0, :cond_70

    const/16 v0, 0x26

    if-eq p0, v0, :cond_55

    const/16 p5, 0x30

    if-eq p0, p5, :cond_4f

    const/16 p5, 0x32

    if-eq p0, p5, :cond_44

    packed-switch p0, :pswitch_data_84

    goto :goto_7b

    :pswitch_29
    if-eqz p4, :cond_2e

    .line 3
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->w(Ljava/io/File;)V

    :cond_2e
    if-eqz p2, :cond_33

    .line 4
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->y(Ljava/io/File;)V

    :cond_33
    if-eqz p3, :cond_7b

    .line 5
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->x(Ljava/io/File;)V

    goto :goto_7b

    :pswitch_39
    if-eqz p4, :cond_3e

    .line 6
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->w(Ljava/io/File;)V

    :cond_3e
    if-eqz p2, :cond_7b

    .line 7
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->y(Ljava/io/File;)V

    goto :goto_7b

    :cond_44
    :pswitch_44
    if-eqz p4, :cond_49

    .line 8
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->w(Ljava/io/File;)V

    :cond_49
    if-eqz p3, :cond_7b

    .line 9
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->x(Ljava/io/File;)V

    goto :goto_7b

    :cond_4f
    :pswitch_4f
    if-eqz p4, :cond_7b

    .line 10
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->w(Ljava/io/File;)V

    goto :goto_7b

    :cond_55
    if-eqz p2, :cond_5a

    .line 11
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->y(Ljava/io/File;)V

    :cond_5a
    if-eqz p3, :cond_5f

    .line 12
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->x(Ljava/io/File;)V

    :cond_5f
    if-eqz p5, :cond_7b

    .line 13
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->z(Ljava/io/File;)V

    goto :goto_7b

    :cond_65
    if-eqz p2, :cond_6a

    .line 14
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->y(Ljava/io/File;)V

    :cond_6a
    if-eqz p3, :cond_7b

    .line 15
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->x(Ljava/io/File;)V

    goto :goto_7b

    :cond_70
    if-eqz p3, :cond_7b

    .line 16
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->x(Ljava/io/File;)V

    goto :goto_7b

    :cond_76
    if-eqz p2, :cond_7b

    .line 17
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->y(Ljava/io/File;)V

    :cond_7b
    :goto_7b
    return-void

    .line 18
    :cond_7c
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "invalid file header. cannot set file attributes"

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_84
    .packed-switch 0x20
        :pswitch_4f
        :pswitch_39
        :pswitch_44
        :pswitch_29
    .end packed-switch
.end method

.method private static c(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/FileHeader;->n()I

    move-result v0

    if-gtz v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/FileHeader;->n()I

    move-result p0

    invoke-static {p0}, Lnet/lingala/zip4j/util/Zip4jUtil;->h(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    :cond_18
    return-void
.end method
