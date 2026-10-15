###### Class da.m0 (da.m0)
.class public final Lda/m0;
.super Lk9/a;
.source "CoroutineContext.kt"

# interfaces
.implements Lda/r2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lda/m0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk9/a;",
        "Lda/r2<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
.end annotation


# static fields
.field public static final q:Lda/m0$a;


# instance fields
.field private final p:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lda/m0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lda/m0$a;-><init>(Lt9/g;)V

    sput-object v0, Lda/m0;->q:Lda/m0$a;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    .line 1
    sget-object v0, Lda/m0;->q:Lda/m0$a;

    invoke-direct {p0, v0}, Lk9/a;-><init>(Lk9/g$c;)V

    .line 2
    iput-wide p1, p0, Lda/m0;->p:J

    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lk9/g;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lda/m0;->o(Lk9/g;Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lda/m0;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lda/m0;

    iget-wide v3, p0, Lda/m0;->p:J

    iget-wide v5, p1, Lda/m0;->p:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-wide v0, p0, Lda/m0;->p:J

    invoke-static {v0, v1}, Lcom/facebook/e;->a(J)I

    move-result v0

    return v0
.end method

.method public final m()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lda/m0;->p:J

    return-wide v0
.end method

.method public bridge synthetic n(Lk9/g;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lda/m0;->w(Lk9/g;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public o(Lk9/g;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoroutineId("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lda/m0;->p:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w(Lk9/g;)Ljava/lang/String;
    .registers 10

    .line 1
    sget-object v0, Lda/n0;->q:Lda/n0$a;

    invoke-interface {p1, v0}, Lk9/g;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object p1

    check-cast p1, Lda/n0;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lda/n0;->m()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_12

    :cond_10
    const-string p1, "coroutine"

    .line 2
    :cond_12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, " @"

    move-object v1, v7

    .line 4
    invoke-static/range {v1 .. v6}, Lba/g;->L(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_2b

    .line 5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    .line 6
    :cond_2b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0xa

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v7, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " @"

    .line 8
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x23

    .line 10
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    iget-wide v1, p0, Lda/m0;->p:J

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {p1, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v7
.end method

###### Class da.m0.a (da.m0$a)
.class public final Lda/m0$a;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"

# interfaces
.implements Lk9/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lda/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk9/g$c<",
        "Lda/m0;",
        ">;"
    }
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

    invoke-direct {p0}, Lda/m0$a;-><init>()V

    return-void
.end method
