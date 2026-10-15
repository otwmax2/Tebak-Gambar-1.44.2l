###### Class f8.b (f8.b)
.class Lf8/b;
.super Lf8/y;
.source "AssetRequestHandler.java"


# static fields
.field private static final b:I = 0x16


# instance fields
.field private final a:Landroid/content/res/AssetManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lf8/y;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lf8/b;->a:Landroid/content/res/AssetManager;

    return-void
.end method

.method static j(Lf8/w;)Ljava/lang/String;
    .registers 2

    .line 1
    iget-object p0, p0, Lf8/w;->d:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    sget v0, Lf8/b;->b:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c(Lf8/w;)Z
    .registers 4

    .line 1
    iget-object p1, p1, Lf8/w;->d:Landroid/net/Uri;

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "android_asset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    return v1
.end method

.method public f(Lf8/w;I)Lf8/y$a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lf8/b;->a:Landroid/content/res/AssetManager;

    invoke-static {p1}, Lf8/b;->j(Lf8/w;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 2
    new-instance p2, Lf8/y$a;

    sget-object v0, Lf8/t$e;->q:Lf8/t$e;

    invoke-direct {p2, p1, v0}, Lf8/y$a;-><init>(Ljava/io/InputStream;Lf8/t$e;)V

    return-object p2
.end method
