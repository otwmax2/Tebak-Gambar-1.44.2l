###### Class g2.r (g2.r)
.class public Lg2/r;
.super Ljava/lang/Object;
.source "UrlLoader.java"

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
        "Ljava/net/URL;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lg2/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg2/l<",
            "Lg2/d;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg2/l;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg2/l<",
            "Lg2/d;",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg2/r;->a:Lg2/l;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)La2/c;
    .registers 4

    .line 1
    check-cast p1, Ljava/net/URL;

    invoke-virtual {p0, p1, p2, p3}, Lg2/r;->b(Ljava/net/URL;II)La2/c;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/net/URL;II)La2/c;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "II)",
            "La2/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg2/r;->a:Lg2/l;

    new-instance v1, Lg2/d;

    invoke-direct {v1, p1}, Lg2/d;-><init>(Ljava/net/URL;)V

    invoke-interface {v0, v1, p2, p3}, Lg2/l;->a(Ljava/lang/Object;II)La2/c;

    move-result-object p1

    return-object p1
.end method
