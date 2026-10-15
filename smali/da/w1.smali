###### Class da.w1 (da.w1)
.class final Lda/w1;
.super Lda/d2;
.source "JobSupport.kt"


# instance fields
.field private final s:Ls9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls9/l<",
            "Ljava/lang/Throwable;",
            "Lh9/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls9/l;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls9/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh9/t;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lda/d2;-><init>()V

    .line 2
    iput-object p1, p0, Lda/w1;->s:Ls9/l;

    return-void
.end method


# virtual methods
.method public C(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lda/w1;->s:Ls9/l;

    invoke-interface {v0, p1}, Ls9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lda/w1;->C(Ljava/lang/Throwable;)V

    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method
