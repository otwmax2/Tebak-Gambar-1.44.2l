###### Class u2.g (u2.g)
.class public Lu2/g;
.super Ljava/lang/Object;
.source "ViewAnimationFactory.java"

# interfaces
.implements Lu2/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lu2/d<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lu2/f$a;

.field private b:Lu2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu2/c<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lu2/f$a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu2/g;->a:Lu2/f$a;

    return-void
.end method


# virtual methods
.method public a(ZZ)Lu2/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lu2/c<",
            "TR;>;"
        }
    .end annotation

    if-nez p1, :cond_15

    if-nez p2, :cond_5

    goto :goto_15

    .line 1
    :cond_5
    iget-object p1, p0, Lu2/g;->b:Lu2/c;

    if-nez p1, :cond_12

    .line 2
    new-instance p1, Lu2/f;

    iget-object p2, p0, Lu2/g;->a:Lu2/f$a;

    invoke-direct {p1, p2}, Lu2/f;-><init>(Lu2/f$a;)V

    iput-object p1, p0, Lu2/g;->b:Lu2/c;

    .line 3
    :cond_12
    iget-object p1, p0, Lu2/g;->b:Lu2/c;

    return-object p1

    .line 4
    :cond_15
    :goto_15
    invoke-static {}, Lu2/e;->c()Lu2/c;

    move-result-object p1

    return-object p1
.end method
