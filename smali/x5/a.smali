###### Class x5.a (x5.a)
.class public Lx5/a;
.super Ljava/lang/Object;
.source "CachedSettingsIo.java"


# instance fields
.field private final a:Ljava/io/File;


# direct methods
.method public constructor <init>(Lv5/f;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.crashlytics.settings.json"

    .line 2
    invoke-virtual {p1, v0}, Lv5/f;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lx5/a;->a:Ljava/io/File;

    return-void
.end method

.method private a()Ljava/io/File;
    .registers 2

    .line 1
    iget-object v0, p0, Lx5/a;->a:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public b()Lorg/json/JSONObject;
    .registers 7

    const-string v0, "Error while closing settings cache file."

    .line 1
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v1

    const-string v2, "Checking for cached settings..."

    invoke-virtual {v1, v2}, Ln5/g;->b(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    :try_start_c
    invoke-direct {p0}, Lx5/a;->a()Ljava/io/File;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 4
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_3b
    .catchall {:try_start_c .. :try_end_1b} :catchall_37

    .line 5
    :try_start_1b
    invoke-static {v3}, Lq5/i;->A(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_24} :catch_26
    .catchall {:try_start_1b .. :try_end_24} :catchall_4a

    move-object v1, v3

    goto :goto_32

    :catch_26
    move-exception v2

    goto :goto_3d

    .line 7
    :cond_28
    :try_start_28
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v2

    const-string v3, "Settings file does not exist."

    invoke-virtual {v2, v3}, Ln5/g;->i(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_31} :catch_3b
    .catchall {:try_start_28 .. :try_end_31} :catchall_37

    move-object v4, v1

    .line 8
    :goto_32
    invoke-static {v1, v0}, Lq5/i;->f(Ljava/io/Closeable;Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_49

    :catchall_37
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    goto :goto_4b

    :catch_3b
    move-exception v2

    move-object v3, v1

    .line 9
    :goto_3d
    :try_start_3d
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v4

    const-string v5, "Failed to fetch cached settings"

    invoke-virtual {v4, v5, v2}, Ln5/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_4a

    .line 10
    invoke-static {v3, v0}, Lq5/i;->f(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_49
    return-object v1

    :catchall_4a
    move-exception v1

    :goto_4b
    invoke-static {v3, v0}, Lq5/i;->f(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 11
    throw v1
.end method

.method public c(JLorg/json/JSONObject;)V
    .registers 7

    const-string v0, "Failed to close settings writer."

    .line 1
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v1

    const-string v2, "Writing settings to cache file..."

    invoke-virtual {v1, v2}, Ln5/g;->i(Ljava/lang/String;)V

    if-eqz p3, :cond_44

    const/4 v1, 0x0

    :try_start_e
    const-string v2, "expires_at"

    .line 2
    invoke-virtual {p3, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3
    new-instance p1, Ljava/io/FileWriter;

    invoke-direct {p0}, Lx5/a;->a()Ljava/io/File;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1c} :catch_32
    .catchall {:try_start_e .. :try_end_1c} :catchall_30

    .line 4
    :try_start_1c
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Ljava/io/FileWriter;->flush()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_2d
    .catchall {:try_start_1c .. :try_end_26} :catchall_2a

    .line 6
    invoke-static {p1, v0}, Lq5/i;->f(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_44

    :catchall_2a
    move-exception p2

    move-object v1, p1

    goto :goto_40

    :catch_2d
    move-exception p2

    move-object v1, p1

    goto :goto_33

    :catchall_30
    move-exception p2

    goto :goto_40

    :catch_32
    move-exception p2

    .line 7
    :goto_33
    :try_start_33
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string p3, "Failed to cache settings"

    invoke-virtual {p1, p3, p2}, Ln5/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_30

    .line 8
    invoke-static {v1, v0}, Lq5/i;->f(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_44

    :goto_40
    invoke-static {v1, v0}, Lq5/i;->f(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 9
    throw p2

    :cond_44
    :goto_44
    return-void
.end method
