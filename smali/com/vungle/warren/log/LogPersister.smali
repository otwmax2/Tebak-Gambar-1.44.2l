###### Class com.vungle.warren.log.LogPersister (com.vungle.warren.log.LogPersister)
.class Lcom/vungle/warren/log/LogPersister;
.super Ljava/lang/Object;
.source "LogPersister.java"


# static fields
.field private static final f:Ljava/lang/String; = "LogPersister"


# instance fields
.field private a:Ljava/io/File;

.field private b:I

.field private c:I

.field private d:Ljava/io/File;

.field private e:Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcom/vungle/warren/log/LogPersister;->c:I

    if-eqz p1, :cond_17

    .line 3
    invoke-direct {p0, p1}, Lcom/vungle/warren/log/LogPersister;->e(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/log/LogPersister;->a:Ljava/io/File;

    if-eqz p1, :cond_17

    .line 4
    invoke-virtual {p0, p1}, Lcom/vungle/warren/log/LogPersister;->f(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/log/LogPersister;->d:Ljava/io/File;

    :cond_17
    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/File;
    .registers 5

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_21

    if-nez p3, :cond_1c

    .line 3
    :try_start_d
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_12

    goto :goto_22

    :catch_12
    move-exception p1

    .line 4
    sget-object p2, Lcom/vungle/warren/log/LogPersister;->f:Ljava/lang/String;

    const-string p3, ""

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    goto :goto_22

    .line 5
    :cond_1c
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p1

    goto :goto_22

    :cond_21
    const/4 p1, 0x1

    :goto_22
    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return-object v0
.end method

.method private static c(J)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static d(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v1, Ljava/io/LineNumberReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_24
    .catchall {:try_start_1 .. :try_end_b} :catchall_1f

    .line 2
    :goto_b
    :try_start_b
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12

    goto :goto_b

    .line 3
    :cond_12
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16} :catch_1d
    .catchall {:try_start_b .. :try_end_16} :catchall_1a

    .line 4
    invoke-static {v1}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_28

    :catchall_1a
    move-exception p0

    move-object v0, v1

    goto :goto_20

    :catch_1d
    move-object v0, v1

    goto :goto_24

    :catchall_1f
    move-exception p0

    :goto_20
    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 5
    throw p0

    :catch_24
    :goto_24
    const/4 p0, -0x1

    .line 6
    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    :goto_28
    return p0
.end method

.method private e(Ljava/io/File;)Ljava/io/File;
    .registers 4

    const-string v0, "sdk_logs"

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/vungle/warren/log/LogPersister;->a(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_11

    :cond_10
    return-object p1

    .line 3
    :cond_11
    :goto_11
    sget-object p1, Lcom/vungle/warren/log/LogPersister;->f:Ljava/lang/String;

    const-string v0, "Failed to create vungle logs dir"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private h(Ljava/io/File;Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_21

    .line 2
    :cond_e
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/vungle/warren/log/LogPersister;->a:Ljava/io/File;

    invoke-direct {v0, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1c

    return v1

    .line 4
    :cond_1c
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    return p1

    :cond_21
    :goto_21
    return v1
.end method


# virtual methods
.method b(I)[Ljava/io/File;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/log/LogPersister;->a:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 2
    sget-object p1, Lcom/vungle/warren/log/LogPersister;->f:Ljava/lang/String;

    const-string v0, "No log cache dir found."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 3
    :cond_d
    new-instance v2, Lcom/vungle/warren/log/LogPersister$4;

    invoke-direct {v2, p0}, Lcom/vungle/warren/log/LogPersister$4;-><init>(Lcom/vungle/warren/log/LogPersister;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 4
    array-length v2, v0

    if-nez v2, :cond_1c

    goto :goto_31

    .line 5
    :cond_1c
    new-instance v1, Lcom/vungle/warren/log/LogPersister$5;

    invoke-direct {v1, p0}, Lcom/vungle/warren/log/LogPersister$5;-><init>(Lcom/vungle/warren/log/LogPersister;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    .line 6
    array-length v2, v0

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/io/File;

    return-object p1

    :cond_31
    :goto_31
    return-object v1
.end method

.method f(Ljava/io/File;)Ljava/io/File;
    .registers 8

    .line 1
    new-instance v0, Lcom/vungle/warren/log/LogPersister$2;

    invoke-direct {v0, p0}, Lcom/vungle/warren/log/LogPersister$2;-><init>(Lcom/vungle/warren/log/LogPersister;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5a

    .line 2
    array-length v2, v0

    if-nez v2, :cond_10

    goto :goto_5a

    .line 3
    :cond_10
    new-instance v2, Lcom/vungle/warren/log/LogPersister$3;

    invoke-direct {v2, p0}, Lcom/vungle/warren/log/LogPersister$3;-><init>(Lcom/vungle/warren/log/LogPersister;)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 4
    aget-object v0, v0, v1

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vungle/warren/log/LogPersister;->d(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_57

    .line 6
    iget v2, p0, Lcom/vungle/warren/log/LogPersister;->c:I

    if-ge v1, v2, :cond_29

    goto :goto_57

    :cond_29
    const/4 v2, 0x0

    .line 7
    :try_start_2a
    iget-object v3, p0, Lcom/vungle/warren/log/LogPersister;->d:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/vungle/warren/log/LogPersister;->d:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_pending"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/vungle/warren/log/LogPersister;->h(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 8
    invoke-virtual {p0, p1}, Lcom/vungle/warren/log/LogPersister;->f(Ljava/io/File;)Ljava/io/File;

    move-result-object p1
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_4d} :catch_4f

    move-object v2, p1

    goto :goto_50

    :catch_4f
    nop

    :cond_50
    :goto_50
    if-nez v2, :cond_55

    .line 9
    iput v1, p0, Lcom/vungle/warren/log/LogPersister;->b:I

    goto :goto_56

    :cond_55
    move-object v0, v2

    :goto_56
    return-object v0

    .line 10
    :cond_57
    :goto_57
    iput v1, p0, Lcom/vungle/warren/log/LogPersister;->b:I

    return-object v0

    .line 11
    :cond_5a
    :goto_5a
    iput v1, p0, Lcom/vungle/warren/log/LogPersister;->b:I

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-direct {p0, p1, v0, v1}, Lcom/vungle/warren/log/LogPersister;->a(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method g()[Ljava/io/File;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/log/LogPersister;->a:Ljava/io/File;

    if-nez v0, :cond_d

    .line 2
    sget-object v0, Lcom/vungle/warren/log/LogPersister;->f:Ljava/lang/String;

    const-string v1, "No log cache dir found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_d
    new-instance v1, Lcom/vungle/warren/log/LogPersister$1;

    invoke-direct {v1, p0}, Lcom/vungle/warren/log/LogPersister$1;-><init>(Lcom/vungle/warren/log/LogPersister;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 24

    move-object v1, p0

    .line 1
    iget-object v0, v1, Lcom/vungle/warren/log/LogPersister;->a:Ljava/io/File;

    if-nez v0, :cond_d

    .line 2
    sget-object v0, Lcom/vungle/warren/log/LogPersister;->f:Ljava/lang/String;

    const-string v2, "No log cache dir found."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_d
    iget-object v0, v1, Lcom/vungle/warren/log/LogPersister;->d:Ljava/io/File;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_30

    .line 4
    :cond_17
    sget-object v0, Lcom/vungle/warren/log/LogPersister;->f:Ljava/lang/String;

    const-string v2, "current log file maybe deleted, create new one."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v2, v1, Lcom/vungle/warren/log/LogPersister;->a:Ljava/io/File;

    invoke-virtual {p0, v2}, Lcom/vungle/warren/log/LogPersister;->f(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    iput-object v2, v1, Lcom/vungle/warren/log/LogPersister;->d:Ljava/io/File;

    if-eqz v2, :cond_c8

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_30

    goto/16 :goto_c8

    .line 7
    :cond_30
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/vungle/warren/log/LogPersister;->c(J)Ljava/lang/String;

    move-result-object v10

    .line 9
    new-instance v0, Lcom/vungle/warren/log/LogEntry;

    move-object v2, v0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-direct/range {v2 .. v13}, Lcom/vungle/warren/log/LogEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 10
    :try_start_59
    new-instance v4, Ljava/io/FileWriter;

    iget-object v5, v1, Lcom/vungle/warren/log/LogPersister;->d:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_60} :catch_7f
    .catchall {:try_start_59 .. :try_end_60} :catchall_7d

    .line 11
    :try_start_60
    iget v2, v1, Lcom/vungle/warren/log/LogPersister;->b:I

    if-lez v2, :cond_69

    const-string v2, "\n"

    .line 12
    invoke-virtual {v4, v2}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 13
    :cond_69
    invoke-virtual {v0}, Lcom/vungle/warren/log/LogEntry;->toJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 14
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_73} :catch_7b
    .catchall {:try_start_60 .. :try_end_73} :catchall_78

    .line 15
    invoke-static {v4}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x1

    goto :goto_8a

    :catchall_78
    move-exception v0

    move-object v2, v4

    goto :goto_c4

    :catch_7b
    move-object v2, v4

    goto :goto_7f

    :catchall_7d
    move-exception v0

    goto :goto_c4

    .line 16
    :catch_7f
    :goto_7f
    :try_start_7f
    sget-object v0, Lcom/vungle/warren/log/LogPersister;->f:Ljava/lang/String;

    const-string v4, "Failed to write sdk logs."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_7d

    const/4 v0, 0x0

    .line 17
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    :goto_8a
    if-eqz v0, :cond_c3

    .line 18
    iget v0, v1, Lcom/vungle/warren/log/LogPersister;->b:I

    add-int/2addr v0, v3

    iput v0, v1, Lcom/vungle/warren/log/LogPersister;->b:I

    .line 19
    iget v2, v1, Lcom/vungle/warren/log/LogPersister;->c:I

    if-lt v0, v2, :cond_c3

    .line 20
    iget-object v0, v1, Lcom/vungle/warren/log/LogPersister;->d:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/vungle/warren/log/LogPersister;->d:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_pending"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/vungle/warren/log/LogPersister;->h(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 21
    iget-object v0, v1, Lcom/vungle/warren/log/LogPersister;->a:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/vungle/warren/log/LogPersister;->f(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/warren/log/LogPersister;->d:Ljava/io/File;

    .line 22
    :cond_bc
    iget-object v0, v1, Lcom/vungle/warren/log/LogPersister;->e:Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;

    if-eqz v0, :cond_c3

    .line 23
    invoke-interface {v0}, Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;->sendPendingLogs()V

    :cond_c3
    return-void

    .line 24
    :goto_c4
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 25
    throw v0

    :cond_c8
    :goto_c8
    const-string v2, "Can\'t create log file, maybe no space left."

    .line 26
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method j(I)V
    .registers 2

    if-gtz p1, :cond_4

    const/16 p1, 0x64

    .line 1
    :cond_4
    iput p1, p0, Lcom/vungle/warren/log/LogPersister;->c:I

    return-void
.end method

.method k(Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/log/LogPersister;->e:Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;

    return-void
.end method

.method public saveCrashLogData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 24

    move-object v1, p0

    .line 1
    iget-object v0, v1, Lcom/vungle/warren/log/LogPersister;->a:Ljava/io/File;

    if-nez v0, :cond_d

    .line 2
    sget-object v0, Lcom/vungle/warren/log/LogPersister;->f:Ljava/lang/String;

    const-string v2, "No log cache dir found."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_d
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/vungle/warren/log/LogPersister;->c(J)Ljava/lang/String;

    move-result-object v10

    .line 5
    new-instance v0, Lcom/vungle/warren/log/LogEntry;

    move-object v2, v0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-direct/range {v2 .. v13}, Lcom/vungle/warren/log/LogEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crash_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v3, v1, Lcom/vungle/warren/log/LogPersister;->a:Ljava/io/File;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v2, v4}, Lcom/vungle/warren/log/LogPersister;->a(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_98

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 8
    :try_start_54
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v2, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_59} :catch_6f
    .catchall {:try_start_54 .. :try_end_59} :catchall_6d

    .line 9
    :try_start_59
    invoke-virtual {v0}, Lcom/vungle/warren/log/LogEntry;->toJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 10
    invoke-virtual {v6}, Ljava/io/FileWriter;->flush()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_63} :catch_6b
    .catchall {:try_start_59 .. :try_end_63} :catchall_68

    .line 11
    invoke-static {v6}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v4, 0x1

    goto :goto_79

    :catchall_68
    move-exception v0

    move-object v3, v6

    goto :goto_94

    :catch_6b
    move-object v3, v6

    goto :goto_6f

    :catchall_6d
    move-exception v0

    goto :goto_94

    .line 12
    :catch_6f
    :goto_6f
    :try_start_6f
    sget-object v0, Lcom/vungle/warren/log/LogPersister;->f:Ljava/lang/String;

    const-string v5, "Failed to write crash log."

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_6d

    .line 13
    invoke-static {v3}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    :goto_79
    if-eqz v4, :cond_98

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_crash"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/vungle/warren/log/LogPersister;->h(Ljava/io/File;Ljava/lang/String;)Z

    goto :goto_98

    .line 15
    :goto_94
    invoke-static {v3}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 16
    throw v0

    :cond_98
    :goto_98
    return-void
.end method

###### Class com.vungle.warren.log.LogPersister.AnonymousClass1 (com.vungle.warren.log.LogPersister$1)
.class Lcom/vungle/warren/log/LogPersister$1;
.super Ljava/lang/Object;
.source "LogPersister.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/log/LogPersister;->g()[Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/log/LogPersister;


# direct methods
.method constructor <init>(Lcom/vungle/warren/log/LogPersister;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/log/LogPersister$1;->a:Lcom/vungle/warren/log/LogPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    const-string p1, "_pending"

    .line 1
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

###### Class com.vungle.warren.log.LogPersister.AnonymousClass2 (com.vungle.warren.log.LogPersister$2)
.class Lcom/vungle/warren/log/LogPersister$2;
.super Ljava/lang/Object;
.source "LogPersister.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/log/LogPersister;->f(Ljava/io/File;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/log/LogPersister;


# direct methods
.method constructor <init>(Lcom/vungle/warren/log/LogPersister;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/log/LogPersister$2;->a:Lcom/vungle/warren/log/LogPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    const-string p1, "_pending"

    .line 1
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

###### Class com.vungle.warren.log.LogPersister.AnonymousClass3 (com.vungle.warren.log.LogPersister$3)
.class Lcom/vungle/warren/log/LogPersister$3;
.super Ljava/lang/Object;
.source "LogPersister.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/log/LogPersister;->f(Ljava/io/File;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/log/LogPersister;


# direct methods
.method constructor <init>(Lcom/vungle/warren/log/LogPersister;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/log/LogPersister$3;->o:Lcom/vungle/warren/log/LogPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .registers 3

    .line 2
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/warren/log/LogPersister$3;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method

###### Class com.vungle.warren.log.LogPersister.AnonymousClass4 (com.vungle.warren.log.LogPersister$4)
.class Lcom/vungle/warren/log/LogPersister$4;
.super Ljava/lang/Object;
.source "LogPersister.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/log/LogPersister;->b(I)[Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/log/LogPersister;


# direct methods
.method constructor <init>(Lcom/vungle/warren/log/LogPersister;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/log/LogPersister$4;->a:Lcom/vungle/warren/log/LogPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    const-string p1, "_crash"

    .line 1
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

###### Class com.vungle.warren.log.LogPersister.AnonymousClass5 (com.vungle.warren.log.LogPersister$5)
.class Lcom/vungle/warren/log/LogPersister$5;
.super Ljava/lang/Object;
.source "LogPersister.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/log/LogPersister;->b(I)[Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/log/LogPersister;


# direct methods
.method constructor <init>(Lcom/vungle/warren/log/LogPersister;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/log/LogPersister$5;->o:Lcom/vungle/warren/log/LogPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .registers 3

    .line 2
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/warren/log/LogPersister$5;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
