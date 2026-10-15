###### Class com.vungle.warren.utility.UnzipUtility (com.vungle.warren.utility.UnzipUtility)
.class public Lcom/vungle/warren/utility/UnzipUtility;
.super Ljava/lang/Object;
.source "UnzipUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/utility/UnzipUtility$Filter;,
        Lcom/vungle/warren/utility/UnzipUtility$ZipSecurityException;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "com.vungle.warren.utility.UnzipUtility"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_17

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_17
    const/4 v0, 0x0

    .line 6
    :try_start_18
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_41

    :try_start_1f
    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_3f

    const/16 p1, 0x1000

    :try_start_24
    new-array p1, p1, [B

    .line 7
    :goto_26
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_32

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v1, p1, v3, v0}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_3c

    goto :goto_26

    .line 9
    :cond_32
    invoke-static {p0}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 10
    invoke-static {v1}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 11
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_3c
    move-exception p1

    move-object v0, v1

    goto :goto_43

    :catchall_3f
    move-exception p1

    goto :goto_43

    :catchall_41
    move-exception p1

    move-object v2, v0

    .line 12
    :goto_43
    invoke-static {p0}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 13
    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 14
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 15
    goto :goto_4e

    :goto_4d
    throw p1

    :goto_4e
    goto :goto_4d
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    return-object p0

    .line 6
    :cond_19
    sget-object p0, Lcom/vungle/warren/utility/UnzipUtility;->a:Ljava/lang/String;

    const-string p1, "File is outside extraction target directory."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance p0, Lcom/vungle/warren/utility/UnzipUtility$ZipSecurityException;

    invoke-direct {p0, p1}, Lcom/vungle/warren/utility/UnzipUtility$ZipSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/vungle/warren/utility/UnzipUtility;->unzip(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/utility/UnzipUtility$Filter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/utility/UnzipUtility$Filter;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vungle/warren/utility/UnzipUtility$Filter;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_99

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_91

    .line 5
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    :cond_1f
    const/4 p0, 0x0

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :try_start_25
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_88

    .line 10
    :try_start_2a
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    .line 11
    :cond_2e
    :goto_2e
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 12
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_5a

    .line 14
    invoke-interface {p2, v3}, Lcom/vungle/warren/utility/UnzipUtility$Filter;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 15
    :cond_5a
    invoke-static {v3, p1}, Lcom/vungle/warren/utility/UnzipUtility;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_72

    .line 17
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    goto :goto_2e

    .line 20
    :cond_72
    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/vungle/warren/utility/UnzipUtility;->a(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 21
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_81
    .catchall {:try_start_2a .. :try_end_81} :catchall_86

    goto :goto_2e

    .line 22
    :cond_82
    :try_start_82
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_85

    :catch_85
    return-object v1

    :catchall_86
    move-exception p0

    goto :goto_8b

    :catchall_88
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    :goto_8b
    if-eqz v2, :cond_90

    :try_start_8d
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_90

    .line 23
    :catch_90
    :cond_90
    throw p0

    .line 24
    :cond_91
    new-instance p0, Ljava/io/IOException;

    const-string p1, "File does not exist"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_99
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Path is empty"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_a2

    :goto_a1
    throw p0

    :goto_a2
    goto :goto_a1
.end method

###### Class com.vungle.warren.utility.UnzipUtility.Filter (com.vungle.warren.utility.UnzipUtility$Filter)
.class public interface abstract Lcom/vungle/warren/utility/UnzipUtility$Filter;
.super Ljava/lang/Object;
.source "UnzipUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/utility/UnzipUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Filter"
.end annotation


# virtual methods
.method public abstract matches(Ljava/lang/String;)Z
.end method

###### Class com.vungle.warren.utility.UnzipUtility.ZipSecurityException (com.vungle.warren.utility.UnzipUtility$ZipSecurityException)
.class Lcom/vungle/warren/utility/UnzipUtility$ZipSecurityException;
.super Ljava/io/IOException;
.source "UnzipUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/utility/UnzipUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZipSecurityException"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
