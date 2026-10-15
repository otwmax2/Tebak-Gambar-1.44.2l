###### Class n2.g (n2.g)
.class Ln2/g;
.super Ljava/lang/Object;
.source "GifFrameModelLoader.java"

# interfaces
.implements Lg2/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln2/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg2/l<",
        "Lx1/a;",
        "Lx1/a;",
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
.method public bridge synthetic a(Ljava/lang/Object;II)La2/c;
    .registers 4

    .line 1
    check-cast p1, Lx1/a;

    invoke-virtual {p0, p1, p2, p3}, Ln2/g;->b(Lx1/a;II)La2/c;

    move-result-object p1

    return-object p1
.end method

.method public b(Lx1/a;II)La2/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx1/a;",
            "II)",
            "La2/c<",
            "Lx1/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p2, Ln2/g$a;

    invoke-direct {p2, p1}, Ln2/g$a;-><init>(Lx1/a;)V

    return-object p2
.end method

###### Class n2.g.a (n2.g$a)
.class Ln2/g$a;
.super Ljava/lang/Object;
.source "GifFrameModelLoader.java"

# interfaces
.implements La2/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La2/c<",
        "Lx1/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lx1/a;


# direct methods
.method public constructor <init>(Lx1/a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln2/g$a;->a:Lx1/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ln2/g$a;->a:Lx1/a;

    invoke-virtual {v0}, Lx1/a;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Lv1/i;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ln2/g$a;->d(Lv1/i;)Lx1/a;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public cancel()V
    .registers 1

    return-void
.end method

.method public d(Lv1/i;)Lx1/a;
    .registers 2

    .line 1
    iget-object p1, p0, Ln2/g$a;->a:Lx1/a;

    return-object p1
.end method
