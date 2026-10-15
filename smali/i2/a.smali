###### Class i2.a (i2.a)
.class public Li2/a;
.super Ljava/lang/Object;
.source "HttpUrlGlideUrlLoader.java"

# interfaces
.implements Lg2/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li2/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg2/l;"
    }
.end annotation


# instance fields
.field private final a:Lg2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg2/k<",
            "Lg2/d;",
            "Lg2/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg2/k;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg2/k<",
            "Lg2/d;",
            "Lg2/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li2/a;->a:Lg2/k;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)La2/c;
    .registers 4

    .line 1
    check-cast p1, Lg2/d;

    invoke-virtual {p0, p1, p2, p3}, Li2/a;->b(Lg2/d;II)La2/c;

    move-result-object p1

    return-object p1
.end method

.method public b(Lg2/d;II)La2/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg2/d;",
            "II)",
            "La2/c<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Li2/a;->a:Lg2/k;

    if-eqz p2, :cond_14

    const/4 p3, 0x0

    .line 2
    invoke-virtual {p2, p1, p3, p3}, Lg2/k;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg2/d;

    if-nez p2, :cond_13

    .line 3
    iget-object p2, p0, Li2/a;->a:Lg2/k;

    invoke-virtual {p2, p1, p3, p3, p1}, Lg2/k;->b(Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_14

    :cond_13
    move-object p1, p2

    .line 4
    :cond_14
    :goto_14
    new-instance p2, La2/f;

    invoke-direct {p2, p1}, La2/f;-><init>(Lg2/d;)V

    return-object p2
.end method

###### Class i2.a.C0176a (i2.a$a)
.class public Li2/a$a;
.super Ljava/lang/Object;
.source "HttpUrlGlideUrlLoader.java"

# interfaces
.implements Lg2/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg2/m<",
        "Lg2/d;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lg2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg2/k<",
            "Lg2/d;",
            "Lg2/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lg2/k;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lg2/k;-><init>(I)V

    iput-object v0, p0, Li2/a$a;->a:Lg2/k;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lg2/c;)Lg2/l;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lg2/c;",
            ")",
            "Lg2/l<",
            "Lg2/d;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Li2/a;

    iget-object p2, p0, Li2/a$a;->a:Lg2/k;

    invoke-direct {p1, p2}, Li2/a;-><init>(Lg2/k;)V

    return-object p1
.end method

.method public b()V
    .registers 1

    return-void
.end method
