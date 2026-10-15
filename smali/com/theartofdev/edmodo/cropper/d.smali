###### Class com.theartofdev.edmodo.cropper.d (com.theartofdev.edmodo.cropper.d)
.class public final Lcom/theartofdev/edmodo/cropper/d;
.super Ljava/lang/Object;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/d$c;,
        Lcom/theartofdev/edmodo/cropper/d$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/net/Uri;)Lcom/theartofdev/edmodo/cropper/d$b;
    .registers 3

    .line 1
    new-instance v0, Lcom/theartofdev/edmodo/cropper/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/theartofdev/edmodo/cropper/d$b;-><init>(Landroid/net/Uri;Lcom/theartofdev/edmodo/cropper/d$a;)V

    return-object v0
.end method

.method public static b(Landroid/content/Intent;)Lcom/theartofdev/edmodo/cropper/d$c;
    .registers 2

    if-eqz p0, :cond_b

    const-string v0, "CROP_IMAGE_EXTRA_RESULT"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/theartofdev/edmodo/cropper/d$c;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public static c(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/d;->d(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    .line 3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 7
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 8
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p0, :cond_46

    const-string v2, "output"

    .line 9
    invoke-virtual {v3, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 10
    :cond_46
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_4a
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Landroid/net/Uri;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v1, "pickImageResult.jpeg"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method public static e(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.intent.action.GET_CONTENT"

    if-ne p1, v1, :cond_f

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_16

    :cond_f
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_16
    const-string p1, "image/*"

    .line 3
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 7
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 8
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_4e
    if-nez p2, :cond_73

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_54
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_73

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 11
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    .line 12
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.android.documentsui.DocumentsActivity"

    .line 13
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_54

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_73
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4

    .line 1
    sget v0, Lz8/d;->c:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    invoke-static {p0, v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/d;->g(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)Landroid/content/Intent;
    .registers 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/d;->j(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_18

    if-eqz p3, :cond_18

    .line 4
    invoke-static {p0, v1}, Lcom/theartofdev/edmodo/cropper/d;->c(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_18
    const-string p0, "android.intent.action.GET_CONTENT"

    .line 5
    invoke-static {v1, p0, p2}, Lcom/theartofdev/edmodo/cropper/d;->e(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    .line 6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_2a

    const-string p0, "android.intent.action.PICK"

    .line 7
    invoke-static {v1, p0, p2}, Lcom/theartofdev/edmodo/cropper/d;->e(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    .line 8
    :cond_2a
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_39

    .line 10
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    goto :goto_4e

    .line 11
    :cond_39
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 13
    :goto_4e
    invoke-static {p0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/os/Parcelable;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    const-string p2, "android.intent.extra.INITIAL_INTENTS"

    .line 15
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public static h(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_19

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :cond_19
    :goto_19
    if-nez v0, :cond_27

    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_22

    goto :goto_27

    :cond_22
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    goto :goto_2b

    :cond_27
    :goto_27
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/d;->d(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    :goto_2b
    return-object p0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x1000

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 3
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz p0, :cond_27

    .line 4
    array-length v0, p0

    if-lez v0, :cond_27

    .line 5
    array-length v0, p0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v0, :cond_27

    aget-object v3, p0, v2

    .line 6
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_20} :catch_27

    if-eqz v3, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :catch_27
    :cond_27
    return v1
.end method

.method public static j(Landroid/content/Context;)Z
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_16

    const-string v0, "android.permission.CAMERA"

    .line 2
    invoke-static {p0, v0}, Lcom/theartofdev/edmodo/cropper/d;->i(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public static k(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_16

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_16

    .line 3
    invoke-static {p0, p1}, Lcom/theartofdev/edmodo/cropper/d;->l(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public static l(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :catch_f
    const/4 p0, 0x1

    return p0
.end method

.method public static m(Landroid/app/Activity;)V
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/d;->f(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xc8

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

###### Class com.theartofdev.edmodo.cropper.d.a (com.theartofdev.edmodo.cropper.d$a)
.class synthetic Lcom/theartofdev/edmodo/cropper/d$a;
.super Ljava/lang/Object;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.theartofdev.edmodo.cropper.d.b (com.theartofdev.edmodo.cropper.d$b)
.class public final Lcom/theartofdev/edmodo/cropper/d$b;
.super Ljava/lang/Object;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/theartofdev/edmodo/cropper/f;


# direct methods
.method private constructor <init>(Landroid/net/Uri;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/d$b;->a:Landroid/net/Uri;

    .line 4
    new-instance p1, Lcom/theartofdev/edmodo/cropper/f;

    invoke-direct {p1}, Lcom/theartofdev/edmodo/cropper/f;-><init>()V

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/d$b;->b:Lcom/theartofdev/edmodo/cropper/f;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Lcom/theartofdev/edmodo/cropper/d$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/d$b;-><init>(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    .line 1
    const-class v0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;

    invoke-virtual {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/d$b;->b(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/d$b;->b:Lcom/theartofdev/edmodo/cropper/f;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/f;->h()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 5
    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/d$b;->a:Landroid/net/Uri;

    const-string v1, "CROP_IMAGE_EXTRA_SOURCE"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/d$b;->b:Lcom/theartofdev/edmodo/cropper/f;

    const-string v1, "CROP_IMAGE_EXTRA_OPTIONS"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "CROP_IMAGE_EXTRA_BUNDLE"

    .line 7
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public c(II)Lcom/theartofdev/edmodo/cropper/d$b;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/d$b;->b:Lcom/theartofdev/edmodo/cropper/f;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/f;->A:I

    .line 2
    iput p2, v0, Lcom/theartofdev/edmodo/cropper/f;->B:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/f;->z:Z

    return-object p0
.end method

.method public d(Z)Lcom/theartofdev/edmodo/cropper/d$b;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/d$b;->b:Lcom/theartofdev/edmodo/cropper/f;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/f;->v:Z

    return-object p0
.end method

.method public e(Lcom/theartofdev/edmodo/cropper/CropImageView$c;)Lcom/theartofdev/edmodo/cropper/d$b;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/d$b;->b:Lcom/theartofdev/edmodo/cropper/f;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/f;->o:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    return-object p0
.end method

.method public f(Z)Lcom/theartofdev/edmodo/cropper/d$b;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/d$b;->b:Lcom/theartofdev/edmodo/cropper/f;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/f;->z:Z

    return-object p0
.end method

.method public g(Lcom/theartofdev/edmodo/cropper/CropImageView$d;)Lcom/theartofdev/edmodo/cropper/d$b;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/d$b;->b:Lcom/theartofdev/edmodo/cropper/f;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/f;->r:Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    return-object p0
.end method

.method public h(IILcom/theartofdev/edmodo/cropper/CropImageView$j;)Lcom/theartofdev/edmodo/cropper/d$b;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/d$b;->b:Lcom/theartofdev/edmodo/cropper/f;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/f;->W:I

    .line 2
    iput p2, v0, Lcom/theartofdev/edmodo/cropper/f;->X:I

    .line 3
    iput-object p3, v0, Lcom/theartofdev/edmodo/cropper/f;->Y:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    return-object p0
.end method

.method public i(Landroid/app/Activity;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/d$b;->b:Lcom/theartofdev/edmodo/cropper/f;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/f;->h()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/d$b;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xcb

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

###### Class com.theartofdev.edmodo.cropper.d.c (com.theartofdev.edmodo.cropper.d$c)
.class public final Lcom/theartofdev/edmodo/cropper/d$c;
.super Lcom/theartofdev/edmodo/cropper/CropImageView$b;
.source "CropImage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/theartofdev/edmodo/cropper/d$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/theartofdev/edmodo/cropper/d$c$a;

    invoke-direct {v0}, Lcom/theartofdev/edmodo/cropper/d$c$a;-><init>()V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/d$c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;ILandroid/graphics/Rect;I)V
    .registers 20

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    move/from16 v9, p6

    move/from16 v10, p8

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/theartofdev/edmodo/cropper/CropImageView$b;-><init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;Landroid/graphics/Rect;II)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 14

    .line 2
    const-class v0, Landroid/net/Uri;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/Uri;

    const-class v0, Landroid/net/Uri;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/Uri;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Exception;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v7

    const-class v0, Landroid/graphics/Rect;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/graphics/Rect;

    const-class v0, Landroid/graphics/Rect;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/graphics/Rect;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .line 11
    invoke-direct/range {v1 .. v11}, Lcom/theartofdev/edmodo/cropper/CropImageView$b;-><init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;Landroid/graphics/Rect;II)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->w()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->z()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->v()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 4
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->h()[F

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 5
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->t()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 6
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->A()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->x()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->y()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

###### Class com.theartofdev.edmodo.cropper.d.c.a (com.theartofdev.edmodo.cropper.d$c$a)
.class final Lcom/theartofdev/edmodo/cropper/d$c$a;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/d$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/theartofdev/edmodo/cropper/d$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/theartofdev/edmodo/cropper/d$c;
    .registers 3

    .line 1
    new-instance v0, Lcom/theartofdev/edmodo/cropper/d$c;

    invoke-direct {v0, p1}, Lcom/theartofdev/edmodo/cropper/d$c;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/theartofdev/edmodo/cropper/d$c;
    .registers 2

    .line 1
    new-array p1, p1, [Lcom/theartofdev/edmodo/cropper/d$c;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/d$c$a;->a(Landroid/os/Parcel;)Lcom/theartofdev/edmodo/cropper/d$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/d$c$a;->b(I)[Lcom/theartofdev/edmodo/cropper/d$c;

    move-result-object p1

    return-object p1
.end method
