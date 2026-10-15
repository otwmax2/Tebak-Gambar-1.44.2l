###### Class ba.e (ba.e)
.class final Lba/e;
.super Ljava/lang/Object;
.source "Strings.kt"

# interfaces
.implements Laa/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laa/b<",
        "Ly9/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:I

.field private final c:I

.field private final d:Ls9/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls9/p<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "Lh9/m<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILs9/p;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Ls9/p<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "Lh9/m<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p4, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lba/e;->a:Ljava/lang/CharSequence;

    .line 3
    iput p2, p0, Lba/e;->b:I

    .line 4
    iput p3, p0, Lba/e;->c:I

    .line 5
    iput-object p4, p0, Lba/e;->d:Ls9/p;

    return-void
.end method

.method public static final synthetic a(Lba/e;)Ls9/p;
    .registers 1

    .line 1
    iget-object p0, p0, Lba/e;->d:Ls9/p;

    return-object p0
.end method

.method public static final synthetic b(Lba/e;)Ljava/lang/CharSequence;
    .registers 1

    .line 1
    iget-object p0, p0, Lba/e;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static final synthetic c(Lba/e;)I
    .registers 1

    .line 1
    iget p0, p0, Lba/e;->c:I

    return p0
.end method

.method public static final synthetic d(Lba/e;)I
    .registers 1

    .line 1
    iget p0, p0, Lba/e;->b:I

    return p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ly9/f;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lba/e$a;

    invoke-direct {v0, p0}, Lba/e$a;-><init>(Lba/e;)V

    return-object v0
.end method

###### Class ba.e.a (ba.e$a)
.class public final Lba/e$a;
.super Ljava/lang/Object;
.source "Strings.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lu9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/e;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ly9/f;",
        ">;",
        "Lu9/a;"
    }
.end annotation


# instance fields
.field private o:I

.field private p:I

.field private q:I

.field private r:Ly9/f;

.field private s:I

.field final synthetic t:Lba/e;


# direct methods
.method constructor <init>(Lba/e;)V
    .registers 4

    iput-object p1, p0, Lba/e$a;->t:Lba/e;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lba/e$a;->o:I

    .line 3
    invoke-static {p1}, Lba/e;->d(Lba/e;)I

    move-result v0

    invoke-static {p1}, Lba/e;->b(Lba/e;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ly9/j;->e(III)I

    move-result p1

    iput p1, p0, Lba/e$a;->p:I

    .line 4
    iput p1, p0, Lba/e$a;->q:I

    return-void
.end method

.method private final a()V
    .registers 7

    .line 1
    iget v0, p0, Lba/e$a;->q:I

    const/4 v1, 0x0

    if-gez v0, :cond_c

    .line 2
    iput v1, p0, Lba/e$a;->o:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lba/e$a;->r:Ly9/f;

    goto/16 :goto_9e

    .line 4
    :cond_c
    iget-object v0, p0, Lba/e$a;->t:Lba/e;

    invoke-static {v0}, Lba/e;->c(Lba/e;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_23

    iget v0, p0, Lba/e$a;->s:I

    add-int/2addr v0, v3

    iput v0, p0, Lba/e$a;->s:I

    iget-object v4, p0, Lba/e$a;->t:Lba/e;

    invoke-static {v4}, Lba/e;->c(Lba/e;)I

    move-result v4

    if-ge v0, v4, :cond_31

    :cond_23
    iget v0, p0, Lba/e$a;->q:I

    iget-object v4, p0, Lba/e$a;->t:Lba/e;

    invoke-static {v4}, Lba/e;->b(Lba/e;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v0, v4, :cond_47

    .line 5
    :cond_31
    new-instance v0, Ly9/f;

    iget v1, p0, Lba/e$a;->p:I

    iget-object v4, p0, Lba/e$a;->t:Lba/e;

    invoke-static {v4}, Lba/e;->b(Lba/e;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lba/q;->A(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v0, v1, v4}, Ly9/f;-><init>(II)V

    iput-object v0, p0, Lba/e$a;->r:Ly9/f;

    .line 6
    iput v2, p0, Lba/e$a;->q:I

    goto :goto_9c

    .line 7
    :cond_47
    iget-object v0, p0, Lba/e$a;->t:Lba/e;

    invoke-static {v0}, Lba/e;->a(Lba/e;)Ls9/p;

    move-result-object v0

    iget-object v4, p0, Lba/e$a;->t:Lba/e;

    invoke-static {v4}, Lba/e;->b(Lba/e;)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lba/e$a;->q:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ls9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh9/m;

    if-nez v0, :cond_77

    .line 8
    new-instance v0, Ly9/f;

    iget v1, p0, Lba/e$a;->p:I

    iget-object v4, p0, Lba/e$a;->t:Lba/e;

    invoke-static {v4}, Lba/e;->b(Lba/e;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lba/q;->A(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v0, v1, v4}, Ly9/f;-><init>(II)V

    iput-object v0, p0, Lba/e$a;->r:Ly9/f;

    .line 9
    iput v2, p0, Lba/e$a;->q:I

    goto :goto_9c

    .line 10
    :cond_77
    invoke-virtual {v0}, Lh9/m;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lh9/m;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 11
    iget v4, p0, Lba/e$a;->p:I

    invoke-static {v4, v2}, Ly9/j;->i(II)Ly9/f;

    move-result-object v4

    iput-object v4, p0, Lba/e$a;->r:Ly9/f;

    add-int/2addr v2, v0

    .line 12
    iput v2, p0, Lba/e$a;->p:I

    if-nez v0, :cond_99

    const/4 v1, 0x1

    :cond_99
    add-int/2addr v2, v1

    .line 13
    iput v2, p0, Lba/e$a;->q:I

    .line 14
    :goto_9c
    iput v3, p0, Lba/e$a;->o:I

    :goto_9e
    return-void
.end method


# virtual methods
.method public b()Ly9/f;
    .registers 4

    .line 1
    iget v0, p0, Lba/e$a;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 2
    invoke-direct {p0}, Lba/e$a;->a()V

    .line 3
    :cond_8
    iget v0, p0, Lba/e$a;->o:I

    if-eqz v0, :cond_19

    .line 4
    iget-object v0, p0, Lba/e$a;->r:Ly9/f;

    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-static {v0, v2}, Lt9/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lba/e$a;->r:Ly9/f;

    .line 6
    iput v1, p0, Lba/e$a;->o:I

    return-object v0

    .line 7
    :cond_19
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 3

    .line 1
    iget v0, p0, Lba/e$a;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 2
    invoke-direct {p0}, Lba/e$a;->a()V

    .line 3
    :cond_8
    iget v0, p0, Lba/e$a;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lba/e$a;->b()Ly9/f;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
