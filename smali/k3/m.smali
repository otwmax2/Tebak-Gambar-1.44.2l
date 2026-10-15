###### Class k3.m (k3.m)
.class public abstract Lk3/m;
.super Ljava/lang/Object;
.source "LogRequest.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk3/m$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lk3/m$a;
    .registers 1

    .line 1
    new-instance v0, Lk3/g$b;

    invoke-direct {v0}, Lk3/g$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Lk3/k;
.end method

.method public abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk3/l;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()Ljava/lang/Integer;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Lk3/p;
.end method

.method public abstract g()J
.end method

.method public abstract h()J
.end method

###### Class k3.m.a (k3.m$a)
.class public abstract Lk3/m$a;
.super Ljava/lang/Object;
.source "LogRequest.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lk3/m;
.end method

.method public abstract b(Lk3/k;)Lk3/m$a;
.end method

.method public abstract c(Ljava/util/List;)Lk3/m$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk3/l;",
            ">;)",
            "Lk3/m$a;"
        }
    .end annotation
.end method

.method abstract d(Ljava/lang/Integer;)Lk3/m$a;
.end method

.method abstract e(Ljava/lang/String;)Lk3/m$a;
.end method

.method public abstract f(Lk3/p;)Lk3/m$a;
.end method

.method public abstract g(J)Lk3/m$a;
.end method

.method public abstract h(J)Lk3/m$a;
.end method

.method public i(I)Lk3/m$a;
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk3/m$a;->d(Ljava/lang/Integer;)Lk3/m$a;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;)Lk3/m$a;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lk3/m$a;->e(Ljava/lang/String;)Lk3/m$a;

    move-result-object p1

    return-object p1
.end method
