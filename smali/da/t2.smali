###### Class da.t2 (da.t2)
.class public final Lda/t2;
.super Lda/i0;
.source "Unconfined.kt"


# static fields
.field public static final q:Lda/t2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lda/t2;

    invoke-direct {v0}, Lda/t2;-><init>()V

    sput-object v0, Lda/t2;->q:Lda/t2;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lda/i0;-><init>()V

    return-void
.end method


# virtual methods
.method public m(Lk9/g;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    sget-object p2, Lda/w2;->q:Lda/w2$a;

    invoke-interface {p1, p2}, Lk9/g;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object p1

    check-cast p1, Lda/w2;

    if-eqz p1, :cond_e

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, Lda/w2;->p:Z

    return-void

    .line 3
    :cond_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o(Lk9/g;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Dispatchers.Unconfined"

    return-object v0
.end method
