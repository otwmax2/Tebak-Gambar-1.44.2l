###### Class g2.q (g2.q)
.class public abstract Lg2/q;
.super Ljava/lang/Object;
.source "UriLoader.java"

# interfaces
.implements Lg2/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lg2/l<",
        "Landroid/net/Uri;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lg2/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg2/l<",
            "Lg2/d;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg2/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lg2/l<",
            "Lg2/d;",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg2/q;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lg2/q;->b:Lg2/l;

    return-void
.end method

.method private static e(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "file"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "content"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "android.resource"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)La2/c;
    .registers 4

    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3}, Lg2/q;->d(Landroid/net/Uri;II)La2/c;

    move-result-object p1

    return-object p1
.end method

.method protected abstract b(Landroid/content/Context;Ljava/lang/String;)La2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "La2/c<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract c(Landroid/content/Context;Landroid/net/Uri;)La2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "La2/c<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final d(Landroid/net/Uri;II)La2/c;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II)",
            "La2/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lg2/q;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 3
    invoke-static {p1}, Lg2/a;->a(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 4
    invoke-static {p1}, Lg2/a;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lg2/q;->a:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Lg2/q;->b(Landroid/content/Context;Ljava/lang/String;)La2/c;

    move-result-object p1

    goto :goto_47

    .line 6
    :cond_1b
    iget-object p2, p0, Lg2/q;->a:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Lg2/q;->c(Landroid/content/Context;Landroid/net/Uri;)La2/c;

    move-result-object p1

    goto :goto_47

    .line 7
    :cond_22
    iget-object v1, p0, Lg2/q;->b:Lg2/l;

    if-eqz v1, :cond_46

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 8
    :cond_36
    iget-object v0, p0, Lg2/q;->b:Lg2/l;

    new-instance v1, Lg2/d;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lg2/d;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p2, p3}, Lg2/l;->a(Ljava/lang/Object;II)La2/c;

    move-result-object p1

    goto :goto_47

    :cond_46
    const/4 p1, 0x0

    :goto_47
    return-object p1
.end method
