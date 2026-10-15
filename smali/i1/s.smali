###### Class i1.s (i1.s)
.class public final Li1/s;
.super Ljava/lang/Object;
.source "WorkInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/s$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/UUID;

.field private b:Li1/s$a;

.field private c:Landroidx/work/b;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroidx/work/b;

.field private f:I


# direct methods
.method public constructor <init>(Ljava/util/UUID;Li1/s$a;Landroidx/work/b;Ljava/util/List;Landroidx/work/b;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Li1/s$a;",
            "Landroidx/work/b;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/work/b;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li1/s;->a:Ljava/util/UUID;

    .line 3
    iput-object p2, p0, Li1/s;->b:Li1/s$a;

    .line 4
    iput-object p3, p0, Li1/s;->c:Landroidx/work/b;

    .line 5
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Li1/s;->d:Ljava/util/Set;

    .line 6
    iput-object p5, p0, Li1/s;->e:Landroidx/work/b;

    .line 7
    iput p6, p0, Li1/s;->f:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_4a

    .line 1
    const-class v1, Li1/s;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_10

    goto :goto_4a

    .line 2
    :cond_10
    check-cast p1, Li1/s;

    .line 3
    iget v1, p0, Li1/s;->f:I

    iget v2, p1, Li1/s;->f:I

    if-eq v1, v2, :cond_19

    return v0

    .line 4
    :cond_19
    iget-object v1, p0, Li1/s;->a:Ljava/util/UUID;

    iget-object v2, p1, Li1/s;->a:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v0

    .line 5
    :cond_24
    iget-object v1, p0, Li1/s;->b:Li1/s$a;

    iget-object v2, p1, Li1/s;->b:Li1/s$a;

    if-eq v1, v2, :cond_2b

    return v0

    .line 6
    :cond_2b
    iget-object v1, p0, Li1/s;->c:Landroidx/work/b;

    iget-object v2, p1, Li1/s;->c:Landroidx/work/b;

    invoke-virtual {v1, v2}, Landroidx/work/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    return v0

    .line 7
    :cond_36
    iget-object v1, p0, Li1/s;->d:Ljava/util/Set;

    iget-object v2, p1, Li1/s;->d:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    return v0

    .line 8
    :cond_41
    iget-object v0, p0, Li1/s;->e:Landroidx/work/b;

    iget-object p1, p1, Li1/s;->e:Landroidx/work/b;

    invoke-virtual {v0, p1}, Landroidx/work/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4a
    :goto_4a
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Li1/s;->a:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Li1/s;->b:Li1/s$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Li1/s;->c:Landroidx/work/b;

    invoke-virtual {v1}, Landroidx/work/b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Li1/s;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Li1/s;->e:Landroidx/work/b;

    invoke-virtual {v1}, Landroidx/work/b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget v1, p0, Li1/s;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkInfo{mId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li1/s;->a:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li1/s;->b:Li1/s$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOutputData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li1/s;->c:Landroidx/work/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li1/s;->d:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li1/s;->e:Landroidx/work/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class i1.s.a (i1.s$a)
.class public final enum Li1/s$a;
.super Ljava/lang/Enum;
.source "WorkInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li1/s$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Li1/s$a;

.field public static final enum p:Li1/s$a;

.field public static final enum q:Li1/s$a;

.field public static final enum r:Li1/s$a;

.field public static final enum s:Li1/s$a;

.field public static final enum t:Li1/s$a;

.field private static final synthetic u:[Li1/s$a;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 1
    new-instance v0, Li1/s$a;

    const-string v1, "ENQUEUED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li1/s$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li1/s$a;->o:Li1/s$a;

    .line 2
    new-instance v1, Li1/s$a;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Li1/s$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Li1/s$a;->p:Li1/s$a;

    .line 3
    new-instance v3, Li1/s$a;

    const-string v5, "SUCCEEDED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Li1/s$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Li1/s$a;->q:Li1/s$a;

    .line 4
    new-instance v5, Li1/s$a;

    const-string v7, "FAILED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Li1/s$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Li1/s$a;->r:Li1/s$a;

    .line 5
    new-instance v7, Li1/s$a;

    const-string v9, "BLOCKED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Li1/s$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Li1/s$a;->s:Li1/s$a;

    .line 6
    new-instance v9, Li1/s$a;

    const-string v11, "CANCELLED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Li1/s$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Li1/s$a;->t:Li1/s$a;

    const/4 v11, 0x6

    new-array v11, v11, [Li1/s$a;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Li1/s$a;->u:[Li1/s$a;

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

.method public static valueOf(Ljava/lang/String;)Li1/s$a;
    .registers 2

    .line 1
    const-class v0, Li1/s$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li1/s$a;

    return-object p0
.end method

.method public static values()[Li1/s$a;
    .registers 1

    .line 1
    sget-object v0, Li1/s$a;->u:[Li1/s$a;

    invoke-virtual {v0}, [Li1/s$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li1/s$a;

    return-object v0
.end method


# virtual methods
.method public c()Z
    .registers 2

    .line 1
    sget-object v0, Li1/s$a;->q:Li1/s$a;

    if-eq p0, v0, :cond_f

    sget-object v0, Li1/s$a;->r:Li1/s$a;

    if-eq p0, v0, :cond_f

    sget-object v0, Li1/s$a;->t:Li1/s$a;

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
