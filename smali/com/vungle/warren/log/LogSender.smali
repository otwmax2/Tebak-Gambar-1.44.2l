###### Class com.vungle.warren.log.LogSender (com.vungle.warren.log.LogSender)
.class Lcom/vungle/warren/log/LogSender;
.super Ljava/lang/Object;
.source "LogSender.java"


# static fields
.field private static final e:Ljava/lang/String; = "LogSender"


# instance fields
.field private final a:Lcom/vungle/warren/VungleApiClient;

.field private final b:Lcom/vungle/warren/persistence/FilePreferences;

.field private final c:Ljava/lang/String;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/persistence/FilePreferences;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/log/LogSender;->a:Lcom/vungle/warren/VungleApiClient;

    .line 3
    iput-object p2, p0, Lcom/vungle/warren/log/LogSender;->b:Lcom/vungle/warren/persistence/FilePreferences;

    .line 4
    invoke-direct {p0}, Lcom/vungle/warren/log/LogSender;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/log/LogSender;->c:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lcom/vungle/warren/log/LogSender;->a()I

    move-result p1

    iput p1, p0, Lcom/vungle/warren/log/LogSender;->d:I

    return-void
.end method

.method private a()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/log/LogSender;->b:Lcom/vungle/warren/persistence/FilePreferences;

    const-string v1, "batch_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/persistence/FilePreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private b()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/log/LogSender;->b:Lcom/vungle/warren/persistence/FilePreferences;

    const-string v1, "device_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/persistence/FilePreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/vungle/warren/log/LogSender;->b:Lcom/vungle/warren/persistence/FilePreferences;

    invoke-virtual {v2, v1, v0}, Lcom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/persistence/FilePreferences;

    .line 5
    iget-object v1, p0, Lcom/vungle/warren/log/LogSender;->b:Lcom/vungle/warren/persistence/FilePreferences;

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/FilePreferences;->apply()V

    :cond_22
    return-object v0
.end method

.method private c(Ljava/io/File;)Lcom/google/gson/i;
    .registers 6

    .line 1
    new-instance v0, Lcom/google/gson/i;

    invoke-direct {v0}, Lcom/google/gson/i;-><init>()V

    const/4 v1, 0x0

    .line 2
    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_28
    .catchall {:try_start_6 .. :try_end_10} :catchall_26

    .line 3
    :goto_10
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 4
    invoke-static {p1}, Lcom/google/gson/q;->c(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/l;->l()Lcom/google/gson/o;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/gson/i;->t(Lcom/google/gson/l;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_21} :catch_29
    .catchall {:try_start_10 .. :try_end_21} :catchall_34

    goto :goto_10

    .line 6
    :cond_22
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_26
    move-exception p1

    goto :goto_36

    :catch_28
    move-object v2, v1

    .line 7
    :catch_29
    :try_start_29
    sget-object p1, Lcom/vungle/warren/log/LogSender;->e:Ljava/lang/String;

    const-string v0, "Invalidate log document file."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_34

    .line 8
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_34
    move-exception p1

    move-object v1, v2

    :goto_36
    invoke-static {v1}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 9
    goto :goto_3b

    :goto_3a
    throw p1

    :goto_3b
    goto :goto_3a
.end method

.method private d()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/log/LogSender;->b:Lcom/vungle/warren/persistence/FilePreferences;

    iget v1, p0, Lcom/vungle/warren/log/LogSender;->d:I

    const-string v2, "batch_id"

    invoke-virtual {v0, v2, v1}, Lcom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;I)Lcom/vungle/warren/persistence/FilePreferences;

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/log/LogSender;->b:Lcom/vungle/warren/persistence/FilePreferences;

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FilePreferences;->apply()V

    return-void
.end method


# virtual methods
.method e([Ljava/io/File;)V
    .registers 8

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_5a

    aget-object v2, p1, v1

    .line 2
    new-instance v3, Lcom/google/gson/o;

    invoke-direct {v3}, Lcom/google/gson/o;-><init>()V

    .line 3
    iget v4, p0, Lcom/vungle/warren/log/LogSender;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "batch_id"

    invoke-virtual {v3, v5, v4}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    .line 4
    iget-object v4, p0, Lcom/vungle/warren/log/LogSender;->c:Ljava/lang/String;

    const-string v5, "device_guid"

    invoke-virtual {v3, v5, v4}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :try_start_1d
    invoke-direct {p0, v2}, Lcom/vungle/warren/log/LogSender;->c(Ljava/io/File;)Lcom/google/gson/i;

    move-result-object v4

    if-nez v4, :cond_27

    .line 6
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V

    goto :goto_57

    :cond_27
    const-string v5, "payload"

    .line 7
    invoke-virtual {v3, v5, v4}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 8
    iget-object v4, p0, Lcom/vungle/warren/log/LogSender;->a:Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v4, v3}, Lcom/vungle/warren/VungleApiClient;->sendLog(Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;

    move-result-object v3

    invoke-interface {v3}, Lcom/vungle/warren/network/Call;->execute()Lcom/vungle/warren/network/Response;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Lcom/vungle/warren/network/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 10
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_3f} :catch_40

    goto :goto_47

    .line 11
    :catch_40
    sget-object v2, Lcom/vungle/warren/log/LogSender;->e:Ljava/lang/String;

    const-string v3, "Failed to generate request payload."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_47
    :goto_47
    iget v2, p0, Lcom/vungle/warren/log/LogSender;->d:I

    const v3, 0x7fffffff

    if-lt v2, v3, :cond_51

    const/4 v2, -0x1

    .line 13
    iput v2, p0, Lcom/vungle/warren/log/LogSender;->d:I

    .line 14
    :cond_51
    iget v2, p0, Lcom/vungle/warren/log/LogSender;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/vungle/warren/log/LogSender;->d:I

    :goto_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 15
    :cond_5a
    invoke-direct {p0}, Lcom/vungle/warren/log/LogSender;->d()V

    return-void
.end method
