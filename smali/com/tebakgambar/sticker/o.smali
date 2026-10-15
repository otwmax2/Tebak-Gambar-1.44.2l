###### Class com.tebakgambar.sticker.o (com.tebakgambar.sticker.o)
.class Lcom/tebakgambar/sticker/o;
.super Ljava/lang/Object;
.source "WhitelistCheck.java"


# static fields
.field private static a:Ljava/lang/String; = "com.tebakgambar.stickercontentprovider"

.field private static b:Ljava/lang/String; = ".provider.sticker_whitelist_check"

.field private static c:Ljava/lang/String; = "is_whitelisted"

.field private static d:Ljava/lang/String; = "result"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .registers 3

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 2
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_9} :catch_a

    return p0

    :catch_a
    :cond_a
    return v0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const-string v0, "com.whatsapp"

    .line 1
    invoke-static {p0, p1, v0}, Lcom/tebakgambar/sticker/o;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static c(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const-string v0, "com.whatsapp.w4b"

    .line 1
    invoke-static {p0, p1, v0}, Lcom/tebakgambar/sticker/o;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static d(Landroid/content/pm/PackageManager;)Z
    .registers 2

    const-string v0, "com.whatsapp"

    .line 1
    invoke-static {v0, p0}, Lcom/tebakgambar/sticker/o;->a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result p0

    return p0
.end method

.method static e(Landroid/content/pm/PackageManager;)Z
    .registers 2

    const-string v0, "com.whatsapp.w4b"

    .line 1
    invoke-static {v0, p0}, Lcom/tebakgambar/sticker/o;->a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result p0

    return p0
.end method

.method private static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-static {p2, v0}, Lcom/tebakgambar/sticker/o;->a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_83

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/tebakgambar/sticker/o;->b:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x80

    .line 4
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_26

    return v1

    .line 5
    :cond_26
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    sget-object v0, Lcom/tebakgambar/sticker/o;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    sget-object v0, Lcom/tebakgambar/sticker/o;->a:Ljava/lang/String;

    const-string v3, "authority"

    invoke-virtual {p2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "identifier"

    invoke-virtual {p2, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_7d

    .line 7
    :try_start_5b
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 8
    sget-object p1, Lcom/tebakgambar/sticker/o;->d:Ljava/lang/String;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_6b
    .catchall {:try_start_5b .. :try_end_6b} :catchall_73

    if-ne p1, v2, :cond_6e

    goto :goto_6f

    :cond_6e
    const/4 v2, 0x0

    .line 9
    :goto_6f
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v2

    :catchall_73
    move-exception p1

    .line 10
    :try_start_74
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_7c

    :catchall_78
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7c
    throw p1

    :cond_7d
    if-eqz p0, :cond_82

    .line 11
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_82
    return v1

    :cond_83
    return v2
.end method
