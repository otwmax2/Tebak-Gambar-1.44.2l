###### Class f8.g (f8.g)
.class Lf8/g;
.super Lf8/y;
.source "ContentStreamRequestHandler.java"


# instance fields
.field final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lf8/y;-><init>()V

    .line 2
    iput-object p1, p0, Lf8/g;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public c(Lf8/w;)Z
    .registers 3

    .line 1
    iget-object p1, p1, Lf8/w;->d:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "content"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Lf8/w;I)Lf8/y$a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p2, Lf8/y$a;

    invoke-virtual {p0, p1}, Lf8/g;->j(Lf8/w;)Ljava/io/InputStream;

    move-result-object p1

    sget-object v0, Lf8/t$e;->q:Lf8/t$e;

    invoke-direct {p2, p1, v0}, Lf8/y$a;-><init>(Ljava/io/InputStream;Lf8/t$e;)V

    return-object p2
.end method

.method j(Lf8/w;)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf8/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2
    iget-object p1, p1, Lf8/w;->d:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
