###### Class g2.k (g2.k)
.class public Lg2/k;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg2/k$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lx2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/e<",
            "Lg2/k$b<",
            "TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lg2/k$a;

    invoke-direct {v0, p0, p1}, Lg2/k$a;-><init>(Lg2/k;I)V

    iput-object v0, p0, Lg2/k;->a:Lx2/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)TB;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lg2/k$b;->a(Ljava/lang/Object;II)Lg2/k$b;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lg2/k;->a:Lx2/e;

    invoke-virtual {p2, p1}, Lx2/e;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lg2/k$b;->c()V

    return-object p2
.end method

.method public b(Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;IITB;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lg2/k$b;->a(Ljava/lang/Object;II)Lg2/k$b;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lg2/k;->a:Lx2/e;

    invoke-virtual {p2, p1, p4}, Lx2/e;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class g2.k.a (g2.k$a)
.class Lg2/k$a;
.super Lx2/e;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg2/k;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx2/e<",
        "Lg2/k$b<",
        "TA;>;TB;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lg2/k;


# direct methods
.method constructor <init>(Lg2/k;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lg2/k$a;->e:Lg2/k;

    invoke-direct {p0, p2}, Lx2/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic j(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Lg2/k$b;

    invoke-virtual {p0, p1, p2}, Lg2/k$a;->n(Lg2/k$b;Ljava/lang/Object;)V

    return-void
.end method

.method protected n(Lg2/k$b;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg2/k$b<",
            "TA;>;TB;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg2/k$b;->c()V

    return-void
.end method

###### Class g2.k.b (g2.k$b)
.class final Lg2/k$b;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg2/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lg2/k$b<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lx2/h;->d(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lg2/k$b;->d:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Object;II)Lg2/k$b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;II)",
            "Lg2/k$b<",
            "TA;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lg2/k$b;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg2/k$b;

    if-nez v0, :cond_f

    .line 2
    new-instance v0, Lg2/k$b;

    invoke-direct {v0}, Lg2/k$b;-><init>()V

    .line 3
    :cond_f
    invoke-direct {v0, p0, p1, p2}, Lg2/k$b;->b(Ljava/lang/Object;II)V

    return-object v0
.end method

.method private b(Ljava/lang/Object;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lg2/k$b;->c:Ljava/lang/Object;

    .line 2
    iput p2, p0, Lg2/k$b;->b:I

    .line 3
    iput p3, p0, Lg2/k$b;->a:I

    return-void
.end method


# virtual methods
.method public c()V
    .registers 2

    .line 1
    sget-object v0, Lg2/k$b;->d:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lg2/k$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 2
    check-cast p1, Lg2/k$b;

    .line 3
    iget v0, p0, Lg2/k$b;->b:I

    iget v2, p1, Lg2/k$b;->b:I

    if-ne v0, v2, :cond_1e

    iget v0, p0, Lg2/k$b;->a:I

    iget v2, p1, Lg2/k$b;->a:I

    if-ne v0, v2, :cond_1e

    iget-object v0, p0, Lg2/k$b;->c:Ljava/lang/Object;

    iget-object p1, p1, Lg2/k$b;->c:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lg2/k$b;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lg2/k$b;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lg2/k$b;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
