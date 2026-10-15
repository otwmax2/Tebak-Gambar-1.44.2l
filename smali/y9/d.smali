###### Class y9.d (y9.d)
.class public Ly9/d;
.super Ljava/lang/Object;
.source "Progressions.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lu9/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly9/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Integer;",
        ">;",
        "Lu9/a;"
    }
.end annotation


# static fields
.field public static final r:Ly9/d$a;


# instance fields
.field private final o:I

.field private final p:I

.field private final q:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ly9/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly9/d$a;-><init>(Lt9/g;)V

    sput-object v0, Ly9/d;->r:Ly9/d$a;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1c

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_14

    .line 2
    iput p1, p0, Ly9/d;->o:I

    .line 3
    invoke-static {p1, p2, p3}, Ln9/c;->c(III)I

    move-result p1

    iput p1, p0, Ly9/d;->p:I

    .line 4
    iput p3, p0, Ly9/d;->q:I

    return-void

    .line 5
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be greater than Int.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be non-zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final c()I
    .registers 2

    .line 1
    iget v0, p0, Ly9/d;->o:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    instance-of v0, p1, Ly9/d;

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Ly9/d;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Ly9/d;

    invoke-virtual {v0}, Ly9/d;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 2
    :cond_13
    iget v0, p0, Ly9/d;->o:I

    check-cast p1, Ly9/d;

    iget v1, p1, Ly9/d;->o:I

    if-ne v0, v1, :cond_29

    iget v0, p0, Ly9/d;->p:I

    iget v1, p1, Ly9/d;->p:I

    if-ne v0, v1, :cond_29

    iget v0, p0, Ly9/d;->q:I

    iget p1, p1, Ly9/d;->q:I

    if-ne v0, p1, :cond_29

    :cond_27
    const/4 p1, 0x1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    return p1
.end method

.method public final g()I
    .registers 2

    .line 1
    iget v0, p0, Ly9/d;->p:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Ly9/d;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    goto :goto_14

    :cond_8
    iget v0, p0, Ly9/d;->o:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ly9/d;->p:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ly9/d;->q:I

    add-int/2addr v0, v1

    :goto_14
    return v0
.end method

.method public final i()I
    .registers 2

    .line 1
    iget v0, p0, Ly9/d;->q:I

    return v0
.end method

.method public isEmpty()Z
    .registers 5

    .line 1
    iget v0, p0, Ly9/d;->q:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_d

    iget v0, p0, Ly9/d;->o:I

    iget v3, p0, Ly9/d;->p:I

    if-le v0, v3, :cond_14

    goto :goto_15

    :cond_d
    iget v0, p0, Ly9/d;->o:I

    iget v3, p0, Ly9/d;->p:I

    if-ge v0, v3, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ly9/d;->j()Li9/y;

    move-result-object v0

    return-object v0
.end method

.method public j()Li9/y;
    .registers 5

    .line 1
    new-instance v0, Ly9/e;

    iget v1, p0, Ly9/d;->o:I

    iget v2, p0, Ly9/d;->p:I

    iget v3, p0, Ly9/d;->q:I

    invoke-direct {v0, v1, v2, v3}, Ly9/e;-><init>(III)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget v0, p0, Ly9/d;->q:I

    const-string v1, " step "

    if-lez v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Ly9/d;->o:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ly9/d;->p:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ly9/d;->q:I

    goto :goto_3a

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Ly9/d;->o:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " downTo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ly9/d;->p:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ly9/d;->q:I

    neg-int v1, v1

    :goto_3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class y9.d.a (y9.d$a)
.class public final Ly9/d$a;
.super Ljava/lang/Object;
.source "Progressions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly9/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Ly9/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)Ly9/d;
    .registers 5

    .line 1
    new-instance v0, Ly9/d;

    invoke-direct {v0, p1, p2, p3}, Ly9/d;-><init>(III)V

    return-object v0
.end method
