###### Class u2.a (u2.a)
.class public Lu2/a;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"

# interfaces
.implements Lu2/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu2/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lu2/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lu2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu2/g<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:Lu2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu2/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private d:Lu2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu2/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x12c

    .line 1
    invoke-direct {p0, v0}, Lu2/a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 2
    new-instance v0, Lu2/g;

    new-instance v1, Lu2/a$a;

    invoke-direct {v1, p1}, Lu2/a$a;-><init>(I)V

    invoke-direct {v0, v1}, Lu2/g;-><init>(Lu2/f$a;)V

    invoke-direct {p0, v0, p1}, Lu2/a;-><init>(Lu2/g;I)V

    return-void
.end method

.method constructor <init>(Lu2/g;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu2/g<",
            "TT;>;I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lu2/a;->a:Lu2/g;

    .line 5
    iput p2, p0, Lu2/a;->b:I

    return-void
.end method

.method private b()Lu2/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lu2/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu2/a;->c:Lu2/b;

    if-nez v0, :cond_15

    .line 2
    iget-object v0, p0, Lu2/a;->a:Lu2/g;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lu2/g;->a(ZZ)Lu2/c;

    move-result-object v0

    .line 3
    new-instance v1, Lu2/b;

    iget v2, p0, Lu2/a;->b:I

    invoke-direct {v1, v0, v2}, Lu2/b;-><init>(Lu2/c;I)V

    iput-object v1, p0, Lu2/a;->c:Lu2/b;

    .line 4
    :cond_15
    iget-object v0, p0, Lu2/a;->c:Lu2/b;

    return-object v0
.end method

.method private c()Lu2/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lu2/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu2/a;->d:Lu2/b;

    if-nez v0, :cond_14

    .line 2
    iget-object v0, p0, Lu2/a;->a:Lu2/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lu2/g;->a(ZZ)Lu2/c;

    move-result-object v0

    .line 3
    new-instance v1, Lu2/b;

    iget v2, p0, Lu2/a;->b:I

    invoke-direct {v1, v0, v2}, Lu2/b;-><init>(Lu2/c;I)V

    iput-object v1, p0, Lu2/a;->d:Lu2/b;

    .line 4
    :cond_14
    iget-object v0, p0, Lu2/a;->d:Lu2/b;

    return-object v0
.end method


# virtual methods
.method public a(ZZ)Lu2/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lu2/c<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 1
    invoke-static {}, Lu2/e;->c()Lu2/c;

    move-result-object p1

    return-object p1

    :cond_7
    if-eqz p2, :cond_e

    .line 2
    invoke-direct {p0}, Lu2/a;->b()Lu2/c;

    move-result-object p1

    return-object p1

    .line 3
    :cond_e
    invoke-direct {p0}, Lu2/a;->c()Lu2/c;

    move-result-object p1

    return-object p1
.end method

###### Class u2.a.C0261a (u2.a$a)
.class Lu2/a$a;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"

# interfaces
.implements Lu2/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lu2/a$a;->a:I

    return-void
.end method


# virtual methods
.method public build()Landroid/view/animation/Animation;
    .registers 4

    .line 1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2
    iget v1, p0, Lu2/a$a;->a:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object v0
.end method
