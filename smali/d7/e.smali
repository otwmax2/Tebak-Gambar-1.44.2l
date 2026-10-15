###### Class d7.e (d7.e)
.class public final Ld7/e;
.super Lh7/a;
.source "JsonTreeReader.java"


# static fields
.field private static final H:Ljava/io/Reader;

.field private static final I:Ljava/lang/Object;


# instance fields
.field private D:[Ljava/lang/Object;

.field private E:I

.field private F:[Ljava/lang/String;

.field private G:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ld7/e$a;

    invoke-direct {v0}, Ld7/e$a;-><init>()V

    sput-object v0, Ld7/e;->H:Ljava/io/Reader;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld7/e;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/l;)V
    .registers 4

    .line 1
    sget-object v0, Ld7/e;->H:Ljava/io/Reader;

    invoke-direct {p0, v0}, Lh7/a;-><init>(Ljava/io/Reader;)V

    const/16 v0, 0x20

    new-array v1, v0, [Ljava/lang/Object;

    .line 2
    iput-object v1, p0, Ld7/e;->D:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Ld7/e;->E:I

    new-array v1, v0, [Ljava/lang/String;

    .line 4
    iput-object v1, p0, Ld7/e;->F:[Ljava/lang/String;

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Ld7/e;->G:[I

    .line 6
    invoke-direct {p0, p1}, Ld7/e;->P(Ljava/lang/Object;)V

    return-void
.end method

.method private L(Lh7/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ld7/e;->x()Lh7/b;

    move-result-object v0

    if-ne v0, p1, :cond_7

    return-void

    .line 2
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Ld7/e;->x()Lh7/b;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ld7/e;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private M()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Ld7/e;->D:[Ljava/lang/Object;

    iget v1, p0, Ld7/e;->E:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private N()Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Ld7/e;->D:[Ljava/lang/Object;

    iget v1, p0, Ld7/e;->E:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ld7/e;->E:I

    aget-object v2, v0, v1

    const/4 v3, 0x0

    .line 2
    aput-object v3, v0, v1

    return-object v2
.end method

.method private P(Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget v0, p0, Ld7/e;->E:I

    iget-object v1, p0, Ld7/e;->D:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_21

    mul-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ld7/e;->D:[Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Ld7/e;->G:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Ld7/e;->G:[I

    .line 4
    iget-object v1, p0, Ld7/e;->F:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ld7/e;->F:[Ljava/lang/String;

    .line 5
    :cond_21
    iget-object v0, p0, Ld7/e;->D:[Ljava/lang/Object;

    iget v1, p0, Ld7/e;->E:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ld7/e;->E:I

    aput-object p1, v0, v1

    return-void
.end method

.method private m()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld7/e;->L2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public J()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ld7/e;->x()Lh7/b;

    move-result-object v0

    sget-object v1, Lh7/b;->s:Lh7/b;

    const-string v2, "null"

    if-ne v0, v1, :cond_16

    .line 2
    invoke-virtual {p0}, Ld7/e;->r()Ljava/lang/String;

    .line 3
    iget-object v0, p0, Ld7/e;->F:[Ljava/lang/String;

    iget v1, p0, Ld7/e;->E:I

    add-int/lit8 v1, v1, -0x2

    aput-object v2, v0, v1

    goto :goto_23

    .line 4
    :cond_16
    invoke-direct {p0}, Ld7/e;->N()Ljava/lang/Object;

    .line 5
    iget v0, p0, Ld7/e;->E:I

    if-lez v0, :cond_23

    .line 6
    iget-object v1, p0, Ld7/e;->F:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    aput-object v2, v1, v0

    .line 7
    :cond_23
    :goto_23
    iget v0, p0, Ld7/e;->E:I

    if-lez v0, :cond_31

    .line 8
    iget-object v1, p0, Ld7/e;->G:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_31
    return-void
.end method

.method public L2()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 2
    :goto_b
    iget v2, p0, Ld7/e;->E:I

    if-ge v1, v2, :cond_52

    .line 3
    iget-object v2, p0, Ld7/e;->D:[Ljava/lang/Object;

    aget-object v3, v2, v1

    instance-of v3, v3, Lcom/google/gson/i;

    if-eqz v3, :cond_31

    add-int/lit8 v1, v1, 0x1

    .line 4
    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_4f

    const/16 v2, 0x5b

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ld7/e;->G:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4f

    .line 6
    :cond_31
    aget-object v3, v2, v1

    instance-of v3, v3, Lcom/google/gson/o;

    if-eqz v3, :cond_4f

    add-int/lit8 v1, v1, 0x1

    .line 7
    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_4f

    const/16 v2, 0x2e

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    iget-object v2, p0, Ld7/e;->F:[Ljava/lang/String;

    aget-object v3, v2, v1

    if-eqz v3, :cond_4f

    .line 10
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4f
    :goto_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 11
    :cond_52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public O()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lh7/b;->s:Lh7/b;

    invoke-direct {p0, v0}, Ld7/e;->L(Lh7/b;)V

    .line 2
    invoke-direct {p0}, Ld7/e;->M()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Ld7/e;->P(Ljava/lang/Object;)V

    .line 5
    new-instance v1, Lcom/google/gson/r;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/gson/r;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Ld7/e;->P(Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lh7/b;->o:Lh7/b;

    invoke-direct {p0, v0}, Ld7/e;->L(Lh7/b;)V

    .line 2
    invoke-direct {p0}, Ld7/e;->M()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/i;

    .line 3
    invoke-virtual {v0}, Lcom/google/gson/i;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Ld7/e;->P(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Ld7/e;->G:[I

    iget v1, p0, Ld7/e;->E:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void
.end method

.method public c()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lh7/b;->q:Lh7/b;

    invoke-direct {p0, v0}, Ld7/e;->L(Lh7/b;)V

    .line 2
    invoke-direct {p0}, Ld7/e;->M()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/o;

    .line 3
    invoke-virtual {v0}, Lcom/google/gson/o;->y()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Ld7/e;->P(Ljava/lang/Object;)V

    return-void
.end method

.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    sget-object v2, Ld7/e;->I:Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Ld7/e;->D:[Ljava/lang/Object;

    .line 2
    iput v0, p0, Ld7/e;->E:I

    return-void
.end method

.method public g()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lh7/b;->p:Lh7/b;

    invoke-direct {p0, v0}, Ld7/e;->L(Lh7/b;)V

    .line 2
    invoke-direct {p0}, Ld7/e;->N()Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Ld7/e;->N()Ljava/lang/Object;

    .line 4
    iget v0, p0, Ld7/e;->E:I

    if-lez v0, :cond_19

    .line 5
    iget-object v1, p0, Ld7/e;->G:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_19
    return-void
.end method

.method public h()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lh7/b;->r:Lh7/b;

    invoke-direct {p0, v0}, Ld7/e;->L(Lh7/b;)V

    .line 2
    invoke-direct {p0}, Ld7/e;->N()Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Ld7/e;->N()Ljava/lang/Object;

    .line 4
    iget v0, p0, Ld7/e;->E:I

    if-lez v0, :cond_19

    .line 5
    iget-object v1, p0, Ld7/e;->G:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_19
    return-void
.end method

.method public j()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ld7/e;->x()Lh7/b;

    move-result-object v0

    .line 2
    sget-object v1, Lh7/b;->r:Lh7/b;

    if-eq v0, v1, :cond_e

    sget-object v1, Lh7/b;->p:Lh7/b;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public n()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lh7/b;->v:Lh7/b;

    invoke-direct {p0, v0}, Ld7/e;->L(Lh7/b;)V

    .line 2
    invoke-direct {p0}, Ld7/e;->N()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/r;

    invoke-virtual {v0}, Lcom/google/gson/r;->c()Z

    move-result v0

    .line 3
    iget v1, p0, Ld7/e;->E:I

    if-lez v1, :cond_1d

    .line 4
    iget-object v2, p0, Ld7/e;->G:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_1d
    return v0
.end method

.method public o()D
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ld7/e;->x()Lh7/b;

    move-result-object v0

    .line 2
    sget-object v1, Lh7/b;->u:Lh7/b;

    if-eq v0, v1, :cond_33

    sget-object v2, Lh7/b;->t:Lh7/b;

    if-ne v0, v2, :cond_d

    goto :goto_33

    .line 3
    :cond_d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p0}, Ld7/e;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_33
    :goto_33
    invoke-direct {p0}, Ld7/e;->M()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/r;

    invoke-virtual {v0}, Lcom/google/gson/r;->g()D

    move-result-wide v0

    .line 6
    invoke-virtual {p0}, Lh7/a;->k()Z

    move-result v2

    if-nez v2, :cond_67

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_50

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_50

    goto :goto_67

    .line 7
    :cond_50
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8
    :cond_67
    :goto_67
    invoke-direct {p0}, Ld7/e;->N()Ljava/lang/Object;

    .line 9
    iget v2, p0, Ld7/e;->E:I

    if-lez v2, :cond_78

    .line 10
    iget-object v3, p0, Ld7/e;->G:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    :cond_78
    return-wide v0
.end method

.method public p()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ld7/e;->x()Lh7/b;

    move-result-object v0

    .line 2
    sget-object v1, Lh7/b;->u:Lh7/b;

    if-eq v0, v1, :cond_33

    sget-object v2, Lh7/b;->t:Lh7/b;

    if-ne v0, v2, :cond_d

    goto :goto_33

    .line 3
    :cond_d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p0}, Ld7/e;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_33
    :goto_33
    invoke-direct {p0}, Ld7/e;->M()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/r;

    invoke-virtual {v0}, Lcom/google/gson/r;->j()I

    move-result v0

    .line 6
    invoke-direct {p0}, Ld7/e;->N()Ljava/lang/Object;

    .line 7
    iget v1, p0, Ld7/e;->E:I

    if-lez v1, :cond_4e

    .line 8
    iget-object v2, p0, Ld7/e;->G:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_4e
    return v0
.end method

.method public q()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ld7/e;->x()Lh7/b;

    move-result-object v0

    .line 2
    sget-object v1, Lh7/b;->u:Lh7/b;

    if-eq v0, v1, :cond_33

    sget-object v2, Lh7/b;->t:Lh7/b;

    if-ne v0, v2, :cond_d

    goto :goto_33

    .line 3
    :cond_d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p0}, Ld7/e;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_33
    :goto_33
    invoke-direct {p0}, Ld7/e;->M()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/r;

    invoke-virtual {v0}, Lcom/google/gson/r;->n()J

    move-result-wide v0

    .line 6
    invoke-direct {p0}, Ld7/e;->N()Ljava/lang/Object;

    .line 7
    iget v2, p0, Ld7/e;->E:I

    if-lez v2, :cond_4e

    .line 8
    iget-object v3, p0, Ld7/e;->G:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    :cond_4e
    return-wide v0
.end method

.method public r()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lh7/b;->s:Lh7/b;

    invoke-direct {p0, v0}, Ld7/e;->L(Lh7/b;)V

    .line 2
    invoke-direct {p0}, Ld7/e;->M()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    iget-object v2, p0, Ld7/e;->F:[Ljava/lang/String;

    iget v3, p0, Ld7/e;->E:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Ld7/e;->P(Ljava/lang/Object;)V

    return-object v1
.end method

.method public t()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lh7/b;->w:Lh7/b;

    invoke-direct {p0, v0}, Ld7/e;->L(Lh7/b;)V

    .line 2
    invoke-direct {p0}, Ld7/e;->N()Ljava/lang/Object;

    .line 3
    iget v0, p0, Ld7/e;->E:I

    if-lez v0, :cond_16

    .line 4
    iget-object v1, p0, Ld7/e;->G:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_16
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    const-class v0, Ld7/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ld7/e;->x()Lh7/b;

    move-result-object v0

    .line 2
    sget-object v1, Lh7/b;->t:Lh7/b;

    if-eq v0, v1, :cond_33

    sget-object v2, Lh7/b;->u:Lh7/b;

    if-ne v0, v2, :cond_d

    goto :goto_33

    .line 3
    :cond_d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p0}, Ld7/e;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_33
    :goto_33
    invoke-direct {p0}, Ld7/e;->N()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/r;

    invoke-virtual {v0}, Lcom/google/gson/r;->o()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget v1, p0, Ld7/e;->E:I

    if-lez v1, :cond_4b

    .line 7
    iget-object v2, p0, Ld7/e;->G:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_4b
    return-object v0
.end method

.method public x()Lh7/b;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ld7/e;->E:I

    if-nez v0, :cond_7

    .line 2
    sget-object v0, Lh7/b;->x:Lh7/b;

    return-object v0

    .line 3
    :cond_7
    invoke-direct {p0}, Ld7/e;->M()Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_3a

    .line 5
    iget-object v1, p0, Ld7/e;->D:[Ljava/lang/Object;

    iget v2, p0, Ld7/e;->E:I

    add-int/lit8 v2, v2, -0x2

    aget-object v1, v1, v2

    instance-of v1, v1, Lcom/google/gson/o;

    .line 6
    check-cast v0, Ljava/util/Iterator;

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    if-eqz v1, :cond_26

    .line 8
    sget-object v0, Lh7/b;->s:Lh7/b;

    return-object v0

    .line 9
    :cond_26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Ld7/e;->P(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Ld7/e;->x()Lh7/b;

    move-result-object v0

    return-object v0

    :cond_32
    if-eqz v1, :cond_37

    .line 11
    sget-object v0, Lh7/b;->r:Lh7/b;

    goto :goto_39

    :cond_37
    sget-object v0, Lh7/b;->p:Lh7/b;

    :goto_39
    return-object v0

    .line 12
    :cond_3a
    instance-of v1, v0, Lcom/google/gson/o;

    if-eqz v1, :cond_41

    .line 13
    sget-object v0, Lh7/b;->q:Lh7/b;

    return-object v0

    .line 14
    :cond_41
    instance-of v1, v0, Lcom/google/gson/i;

    if-eqz v1, :cond_48

    .line 15
    sget-object v0, Lh7/b;->o:Lh7/b;

    return-object v0

    .line 16
    :cond_48
    instance-of v1, v0, Lcom/google/gson/r;

    if-eqz v1, :cond_6f

    .line 17
    check-cast v0, Lcom/google/gson/r;

    .line 18
    invoke-virtual {v0}, Lcom/google/gson/r;->y()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 19
    sget-object v0, Lh7/b;->t:Lh7/b;

    return-object v0

    .line 20
    :cond_57
    invoke-virtual {v0}, Lcom/google/gson/r;->u()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 21
    sget-object v0, Lh7/b;->v:Lh7/b;

    return-object v0

    .line 22
    :cond_60
    invoke-virtual {v0}, Lcom/google/gson/r;->x()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 23
    sget-object v0, Lh7/b;->u:Lh7/b;

    return-object v0

    .line 24
    :cond_69
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 25
    :cond_6f
    instance-of v1, v0, Lcom/google/gson/n;

    if-eqz v1, :cond_76

    .line 26
    sget-object v0, Lh7/b;->w:Lh7/b;

    return-object v0

    .line 27
    :cond_76
    sget-object v1, Ld7/e;->I:Ljava/lang/Object;

    if-ne v0, v1, :cond_82

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_82
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

###### Class d7.e.a (d7.e$a)
.class Ld7/e$a;
.super Ljava/io/Reader;
.source "JsonTreeReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public read([CII)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method
