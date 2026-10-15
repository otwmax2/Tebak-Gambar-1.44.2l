###### Class i9.a (i9.a)
.class public abstract Li9/a;
.super Ljava/lang/Object;
.source "AbstractIterator.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lu9/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li9/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lu9/a;"
    }
.end annotation


# instance fields
.field private o:Li9/k0;

.field private p:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Li9/k0;->p:Li9/k0;

    iput-object v0, p0, Li9/a;->o:Li9/k0;

    return-void
.end method

.method private final e()Z
    .registers 3

    .line 1
    sget-object v0, Li9/k0;->r:Li9/k0;

    iput-object v0, p0, Li9/a;->o:Li9/k0;

    .line 2
    invoke-virtual {p0}, Li9/a;->a()V

    .line 3
    iget-object v0, p0, Li9/a;->o:Li9/k0;

    sget-object v1, Li9/k0;->o:Li9/k0;

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected final b()V
    .registers 2

    .line 1
    sget-object v0, Li9/k0;->q:Li9/k0;

    iput-object v0, p0, Li9/a;->o:Li9/k0;

    return-void
.end method

.method protected final d(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Li9/a;->p:Ljava/lang/Object;

    .line 2
    sget-object p1, Li9/k0;->o:Li9/k0;

    iput-object p1, p0, Li9/a;->o:Li9/k0;

    return-void
.end method

.method public hasNext()Z
    .registers 5

    .line 1
    iget-object v0, p0, Li9/a;->o:Li9/k0;

    sget-object v1, Li9/k0;->r:Li9/k0;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_21

    .line 2
    sget-object v1, Li9/a$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v3, :cond_20

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    .line 3
    invoke-direct {p0}, Li9/a;->e()Z

    move-result v2

    goto :goto_20

    :cond_1f
    const/4 v2, 0x1

    :cond_20
    :goto_20
    return v2

    .line 4
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Li9/a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    sget-object v0, Li9/k0;->p:Li9/k0;

    iput-object v0, p0, Li9/a;->o:Li9/k0;

    .line 3
    iget-object v0, p0, Li9/a;->p:Ljava/lang/Object;

    return-object v0

    .line 4
    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class i9.a.C0177a (i9.a$a)
.class public final synthetic Li9/a$a;
.super Ljava/lang/Object;
.source "AbstractIterator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Li9/k0;->values()[Li9/k0;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Li9/k0;->q:Li9/k0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Li9/k0;->o:Li9/k0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Li9/a$a;->a:[I

    return-void
.end method
