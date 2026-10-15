###### Class y8.a (y8.a)
.class public Ly8/a;
.super Ljava/lang/Object;
.source "AppUtil.java"


# static fields
.field public static a:Ljava/lang/String; = "https://www.facebook.com/TebakGambarOfficial"

.field public static b:Ljava/lang/String; = "566897873338343"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_4
    const-string v0, "com.facebook.katana"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    const v0, 0x2dd1e2

    if-lt p0, v0, :cond_26

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fb://facewebmodal/f?href="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ly8/a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_26
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fb://page/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ly8/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_39
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_39} :catch_3a

    return-object p0

    .line 5
    :catch_3a
    sget-object p0, Ly8/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    :try_start_5
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_8} :catch_9

    const/4 v0, 0x1

    :catch_9
    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "com.facebook.katana"

    .line 1
    invoke-static {p0, v0}, Ly8/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "com.facebook.lite"

    invoke-static {p0, v0}, Ly8/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "com.instagram.android"

    .line 1
    invoke-static {p0, v0}, Ly8/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static e()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/x;->h()Lcom/twitter/sdk/android/core/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/x;->i()Lcom/twitter/sdk/android/core/n;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 2
    invoke-interface {v0}, Lcom/twitter/sdk/android/core/n;->c()Lcom/twitter/sdk/android/core/m;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/n;->c()Lcom/twitter/sdk/android/core/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/a0;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/a0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method public static f(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Landroidx/browser/customtabs/d$a;

    invoke-direct {v0}, Landroidx/browser/customtabs/d$a;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/d$a;->d(I)Landroidx/browser/customtabs/d$a;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/browser/customtabs/d$a;->a()Landroidx/browser/customtabs/d;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0, p1}, Landroidx/browser/customtabs/d;->a(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_20
    return-void
.end method

.method public static g(Landroid/app/Activity;ILandroid/net/Uri;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ly8/n;
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_21

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 2
    invoke-static {p0, v0}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 3
    invoke-static {p0, v2}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v1, :cond_17

    if-nez v3, :cond_17

    goto :goto_21

    .line 4
    :cond_17
    new-instance p0, Ly8/n;

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ly8/n;-><init>([Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_21
    :goto_21
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "output"

    .line 6
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static h(Landroid/app/Activity;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ly8/n;
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_19

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 2
    invoke-static {p0, v0}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_f

    goto :goto_19

    .line 3
    :cond_f
    new-instance p0, Ly8/n;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ly8/n;-><init>([Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_19
    :goto_19
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "image/*"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static i(Landroid/content/Context;)Z
    .registers 5

    .line 1
    invoke-static {p0}, Ly8/a;->c(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 2
    :try_start_7
    invoke-static {p0}, Ly8/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    .line 4
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_21
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_21} :catch_23

    const/4 p0, 0x1

    return p0

    :catch_23
    return v1

    :cond_24
    const-string v0, "https://m.facebook.com/TebakGambarOfficial"

    .line 7
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Ly8/a;->f(Landroid/content/Context;Landroid/net/Uri;)V

    return v1
.end method

.method public static j(Landroid/content/Context;)V
    .registers 2

    const-string v0, "http://j.mp/ig-tg"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Ly8/a;->f(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static k(Landroid/content/Context;)V
    .registers 2

    const-string v0, "http://j.mp/lineattg"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Ly8/a;->f(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .registers 2

    const-string v0, "http://bit.ly/native-tg-placeholder"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Ly8/a;->f(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .registers 2

    const-string v0, "http://j.mp/twitter-tg"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Ly8/a;->f(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
