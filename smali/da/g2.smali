###### Class da.g2 (da.g2)
.class final Lda/g2;
.super Lda/o2;
.source "Builders.common.kt"


# instance fields
.field private final q:Lk9/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/d<",
            "Lh9/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk9/g;Ls9/p;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/g;",
            "Ls9/p<",
            "-",
            "Lda/o0;",
            "-",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lda/o2;-><init>(Lk9/g;Z)V

    .line 2
    invoke-static {p2, p0, p0}, Ll9/b;->a(Ls9/p;Ljava/lang/Object;Lk9/d;)Lk9/d;

    move-result-object p1

    iput-object p1, p0, Lda/g2;->q:Lk9/d;

    return-void
.end method


# virtual methods
.method protected u0()V
    .registers 2

    .line 1
    iget-object v0, p0, Lda/g2;->q:Lk9/d;

    invoke-static {v0, p0}, Lha/a;->b(Lk9/d;Lk9/d;)V

    return-void
.end method
