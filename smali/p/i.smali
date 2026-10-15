###### Class p.i (p.i)
.class public Lp/i;
.super Ljava/lang/Object;
.source "SolverVariable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lp/i;",
        ">;"
    }
.end annotation


# static fields
.field private static F:I = 0x1


# instance fields
.field public A:I

.field B:Z

.field C:I

.field D:F

.field E:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lp/b;",
            ">;"
        }
    .end annotation
.end field

.field public o:Z

.field private p:Ljava/lang/String;

.field public q:I

.field r:I

.field public s:I

.field public t:F

.field public u:Z

.field v:[F

.field w:[F

.field x:Lp/i$a;

.field y:[Lp/b;

.field z:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lp/i$a;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    .line 2
    iput p2, p0, Lp/i;->q:I

    .line 3
    iput p2, p0, Lp/i;->r:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lp/i;->s:I

    .line 5
    iput-boolean v0, p0, Lp/i;->u:Z

    const/16 v1, 0x9

    new-array v2, v1, [F

    .line 6
    iput-object v2, p0, Lp/i;->v:[F

    new-array v1, v1, [F

    .line 7
    iput-object v1, p0, Lp/i;->w:[F

    const/16 v1, 0x10

    new-array v1, v1, [Lp/b;

    .line 8
    iput-object v1, p0, Lp/i;->y:[Lp/b;

    .line 9
    iput v0, p0, Lp/i;->z:I

    .line 10
    iput v0, p0, Lp/i;->A:I

    .line 11
    iput-boolean v0, p0, Lp/i;->B:Z

    .line 12
    iput p2, p0, Lp/i;->C:I

    const/4 p2, 0x0

    .line 13
    iput p2, p0, Lp/i;->D:F

    const/4 p2, 0x0

    .line 14
    iput-object p2, p0, Lp/i;->E:Ljava/util/HashSet;

    .line 15
    iput-object p1, p0, Lp/i;->x:Lp/i$a;

    return-void
.end method

.method static f()V
    .registers 1

    .line 1
    sget v0, Lp/i;->F:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lp/i;->F:I

    return-void
.end method


# virtual methods
.method public final c(Lp/b;)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget v1, p0, Lp/i;->z:I

    if-ge v0, v1, :cond_f

    .line 2
    iget-object v1, p0, Lp/i;->y:[Lp/b;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_c

    return-void

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3
    :cond_f
    iget-object v0, p0, Lp/i;->y:[Lp/b;

    array-length v2, v0

    if-lt v1, v2, :cond_1f

    .line 4
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp/b;

    iput-object v0, p0, Lp/i;->y:[Lp/b;

    .line 5
    :cond_1f
    iget-object v0, p0, Lp/i;->y:[Lp/b;

    iget v1, p0, Lp/i;->z:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 6
    iput v1, p0, Lp/i;->z:I

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lp/i;

    invoke-virtual {p0, p1}, Lp/i;->e(Lp/i;)I

    move-result p1

    return p1
.end method

.method public e(Lp/i;)I
    .registers 3

    .line 1
    iget v0, p0, Lp/i;->q:I

    iget p1, p1, Lp/i;->q:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final g(Lp/b;)V
    .registers 6

    .line 1
    iget v0, p0, Lp/i;->z:I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_23

    .line 2
    iget-object v2, p0, Lp/i;->y:[Lp/b;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_20

    :goto_b
    add-int/lit8 p1, v0, -0x1

    if-ge v1, p1, :cond_19

    .line 3
    iget-object p1, p0, Lp/i;->y:[Lp/b;

    add-int/lit8 v2, v1, 0x1

    aget-object v3, p1, v2

    aput-object v3, p1, v1

    move v1, v2

    goto :goto_b

    .line 4
    :cond_19
    iget p1, p0, Lp/i;->z:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lp/i;->z:I

    return-void

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_23
    return-void
.end method

.method public i()V
    .registers 7

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lp/i;->p:Ljava/lang/String;

    .line 2
    sget-object v1, Lp/i$a;->s:Lp/i$a;

    iput-object v1, p0, Lp/i;->x:Lp/i$a;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lp/i;->s:I

    const/4 v2, -0x1

    .line 4
    iput v2, p0, Lp/i;->q:I

    .line 5
    iput v2, p0, Lp/i;->r:I

    const/4 v3, 0x0

    .line 6
    iput v3, p0, Lp/i;->t:F

    .line 7
    iput-boolean v1, p0, Lp/i;->u:Z

    .line 8
    iput-boolean v1, p0, Lp/i;->B:Z

    .line 9
    iput v2, p0, Lp/i;->C:I

    .line 10
    iput v3, p0, Lp/i;->D:F

    .line 11
    iget v2, p0, Lp/i;->z:I

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v2, :cond_26

    .line 12
    iget-object v5, p0, Lp/i;->y:[Lp/b;

    aput-object v0, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 13
    :cond_26
    iput v1, p0, Lp/i;->z:I

    .line 14
    iput v1, p0, Lp/i;->A:I

    .line 15
    iput-boolean v1, p0, Lp/i;->o:Z

    .line 16
    iget-object v0, p0, Lp/i;->w:[F

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public j(Lp/d;F)V
    .registers 6

    .line 1
    iput p2, p0, Lp/i;->t:F

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lp/i;->u:Z

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lp/i;->B:Z

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lp/i;->C:I

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lp/i;->D:F

    .line 6
    iget v1, p0, Lp/i;->z:I

    .line 7
    iput v0, p0, Lp/i;->r:I

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v1, :cond_1f

    .line 8
    iget-object v2, p0, Lp/i;->y:[Lp/b;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p0, p2}, Lp/b;->A(Lp/d;Lp/i;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 9
    :cond_1f
    iput p2, p0, Lp/i;->z:I

    return-void
.end method

.method public k(Lp/i$a;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lp/i;->x:Lp/i$a;

    return-void
.end method

.method public final l(Lp/d;Lp/b;)V
    .registers 7

    .line 1
    iget v0, p0, Lp/i;->z:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_10

    .line 2
    iget-object v3, p0, Lp/i;->y:[Lp/b;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, v1}, Lp/b;->B(Lp/d;Lp/b;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3
    :cond_10
    iput v1, p0, Lp/i;->z:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lp/i;->p:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_18

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp/i;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    .line 3
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lp/i;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_29
    return-object v0
.end method

###### Class p.i.a (p.i$a)
.class public final enum Lp/i$a;
.super Ljava/lang/Enum;
.source "SolverVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lp/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Lp/i$a;

.field public static final enum p:Lp/i$a;

.field public static final enum q:Lp/i$a;

.field public static final enum r:Lp/i$a;

.field public static final enum s:Lp/i$a;

.field private static final synthetic t:[Lp/i$a;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 1
    new-instance v0, Lp/i$a;

    const-string v1, "UNRESTRICTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lp/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lp/i$a;->o:Lp/i$a;

    .line 2
    new-instance v1, Lp/i$a;

    const-string v3, "CONSTANT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lp/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lp/i$a;->p:Lp/i$a;

    .line 3
    new-instance v3, Lp/i$a;

    const-string v5, "SLACK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lp/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lp/i$a;->q:Lp/i$a;

    .line 4
    new-instance v5, Lp/i$a;

    const-string v7, "ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lp/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lp/i$a;->r:Lp/i$a;

    .line 5
    new-instance v7, Lp/i$a;

    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lp/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lp/i$a;->s:Lp/i$a;

    const/4 v9, 0x5

    new-array v9, v9, [Lp/i$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lp/i$a;->t:[Lp/i$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lp/i$a;
    .registers 2

    .line 1
    const-class v0, Lp/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lp/i$a;

    return-object p0
.end method

.method public static values()[Lp/i$a;
    .registers 1

    .line 1
    sget-object v0, Lp/i$a;->t:[Lp/i$a;

    invoke-virtual {v0}, [Lp/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp/i$a;

    return-object v0
.end method
