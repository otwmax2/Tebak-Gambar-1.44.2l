###### Class i1.l (i1.l)
.class public final Li1/l;
.super Li1/u;
.source "OneTimeWorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/l$a;
    }
.end annotation


# direct methods
.method constructor <init>(Li1/l$a;)V
    .registers 4

    .line 1
    iget-object v0, p1, Li1/u$a;->b:Ljava/util/UUID;

    iget-object v1, p1, Li1/u$a;->c:Lq1/p;

    iget-object p1, p1, Li1/u$a;->d:Ljava/util/Set;

    invoke-direct {p0, v0, v1, p1}, Li1/u;-><init>(Ljava/util/UUID;Lq1/p;Ljava/util/Set;)V

    return-void
.end method

.method public static d(Ljava/lang/Class;)Li1/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;)",
            "Li1/l;"
        }
    .end annotation

    .line 1
    new-instance v0, Li1/l$a;

    invoke-direct {v0, p0}, Li1/l$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0}, Li1/u$a;->b()Li1/u;

    move-result-object p0

    check-cast p0, Li1/l;

    return-object p0
.end method

###### Class i1.l.a (i1.l$a)
.class public final Li1/l$a;
.super Li1/u$a;
.source "OneTimeWorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li1/u$a<",
        "Li1/l$a;",
        "Li1/l;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li1/u$a;-><init>(Ljava/lang/Class;)V

    .line 2
    iget-object p1, p0, Li1/u$a;->c:Lq1/p;

    const-class v0, Landroidx/work/OverwritingInputMerger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lq1/p;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method bridge synthetic c()Li1/u;
    .registers 2

    .line 1
    invoke-virtual {p0}, Li1/l$a;->h()Li1/l;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic d()Li1/u$a;
    .registers 2

    .line 1
    invoke-virtual {p0}, Li1/l$a;->i()Li1/l$a;

    move-result-object v0

    return-object v0
.end method

.method h()Li1/l;
    .registers 3

    .line 1
    iget-boolean v0, p0, Li1/u$a;->a:Z

    if-eqz v0, :cond_1d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1d

    iget-object v0, p0, Li1/u$a;->c:Lq1/p;

    iget-object v0, v0, Lq1/p;->j:Li1/b;

    .line 2
    invoke-virtual {v0}, Li1/b;->h()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1d

    .line 3
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set backoff criteria on an idle mode job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1d
    :goto_1d
    new-instance v0, Li1/l;

    invoke-direct {v0, p0}, Li1/l;-><init>(Li1/l$a;)V

    return-object v0
.end method

.method i()Li1/l$a;
    .registers 1

    return-object p0
.end method
