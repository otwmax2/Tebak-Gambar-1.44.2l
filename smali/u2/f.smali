###### Class u2.f (u2.f)
.class public Lu2/f;
.super Ljava/lang/Object;
.source "ViewAnimation.java"

# interfaces
.implements Lu2/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu2/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lu2/c<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lu2/f$a;


# direct methods
.method constructor <init>(Lu2/f$a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu2/f;->a:Lu2/f$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lu2/c$a;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lu2/c$a;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lu2/c$a;->a()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 3
    iget-object p2, p0, Lu2/f;->a:Lu2/f$a;

    invoke-interface {p2}, Lu2/f$a;->build()Landroid/view/animation/Animation;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

###### Class u2.f.a (u2.f$a)
.class interface abstract Lu2/f$a;
.super Ljava/lang/Object;
.source "ViewAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "a"
.end annotation


# virtual methods
.method public abstract build()Landroid/view/animation/Animation;
.end method
