###### Class n5.f (n5.f)
.class public Ln5/f;
.super Ljava/lang/Object;
.source "DevelopmentPlatformProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln5/f$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ln5/f$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln5/f;->a:Landroid/content/Context;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Ln5/f;->b:Ln5/f$b;

    return-void
.end method

.method static synthetic a(Ln5/f;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Ln5/f;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Ln5/f;Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ln5/f;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private c(Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Ln5/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 2
    :cond_a
    :try_start_a
    iget-object v0, p0, Ln5/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1a

    .line 3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1a} :catch_1b

    :cond_1a
    return v0

    :catch_1b
    return v1
.end method

.method private f()Ln5/f$b;
    .registers 3

    .line 1
    iget-object v0, p0, Ln5/f;->b:Ln5/f$b;

    if-nez v0, :cond_c

    .line 2
    new-instance v0, Ln5/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ln5/f$b;-><init>(Ln5/f;Ln5/f$a;)V

    iput-object v0, p0, Ln5/f;->b:Ln5/f$b;

    .line 3
    :cond_c
    iget-object v0, p0, Ln5/f;->b:Ln5/f$b;

    return-object v0
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0}, Ln5/f;->f()Ln5/f$b;

    move-result-object v0

    invoke-static {v0}, Ln5/f$b;->a(Ln5/f$b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0}, Ln5/f;->f()Ln5/f$b;

    move-result-object v0

    invoke-static {v0}, Ln5/f$b;->b(Ln5/f$b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class n5.f.a (n5.f$a)
.class synthetic Ln5/f$a;
.super Ljava/lang/Object;
.source "DevelopmentPlatformProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln5/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class n5.f.b (n5.f$b)
.class Ln5/f$b;
.super Ljava/lang/Object;
.source "DevelopmentPlatformProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln5/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field final synthetic c:Ln5/f;


# direct methods
.method private constructor <init>(Ln5/f;)V
    .registers 5

    .line 2
    iput-object p1, p0, Ln5/f$b;->c:Ln5/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Ln5/f;->a(Ln5/f;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.firebase.crashlytics.unity_version"

    const-string v2, "string"

    invoke-static {v0, v1, v2}, Lq5/i;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3e

    const-string v1, "Unity"

    .line 4
    iput-object v1, p0, Ln5/f$b;->a:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Ln5/f;->a(Ln5/f;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ln5/f$b;->b:Ljava/lang/String;

    .line 6
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unity Editor version is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln5/g;->i(Ljava/lang/String;)V

    return-void

    :cond_3e
    const-string v0, "flutter_assets/NOTICES.Z"

    .line 7
    invoke-static {p1, v0}, Ln5/f;->b(Ln5/f;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_57

    const-string p1, "Flutter"

    .line 8
    iput-object p1, p0, Ln5/f$b;->a:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Ln5/f$b;->b:Ljava/lang/String;

    .line 10
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string v0, "Development platform is: Flutter"

    invoke-virtual {p1, v0}, Ln5/g;->i(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_57
    iput-object v0, p0, Ln5/f$b;->a:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Ln5/f$b;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ln5/f;Ln5/f$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Ln5/f$b;-><init>(Ln5/f;)V

    return-void
.end method

.method static synthetic a(Ln5/f$b;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Ln5/f$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Ln5/f$b;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Ln5/f$b;->b:Ljava/lang/String;

    return-object p0
.end method
