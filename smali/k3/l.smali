###### Class k3.l (k3.l)
.class public abstract Lk3/l;
.super Ljava/lang/Object;
.source "LogEvent.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk3/l$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lk3/l$a;
    .registers 1

    .line 1
    new-instance v0, Lk3/f$b;

    invoke-direct {v0}, Lk3/f$b;-><init>()V

    return-object v0
.end method

.method public static i(Ljava/lang/String;)Lk3/l$a;
    .registers 2

    .line 1
    invoke-static {}, Lk3/l;->a()Lk3/l$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk3/l$a;->g(Ljava/lang/String;)Lk3/l$a;

    move-result-object p0

    return-object p0
.end method

.method public static j([B)Lk3/l$a;
    .registers 2

    .line 1
    invoke-static {}, Lk3/l;->a()Lk3/l$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk3/l$a;->f([B)Lk3/l$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract b()Ljava/lang/Integer;
.end method

.method public abstract c()J
.end method

.method public abstract d()J
.end method

.method public abstract e()Lk3/o;
.end method

.method public abstract f()[B
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()J
.end method

###### Class k3.l.a (k3.l$a)
.class public abstract Lk3/l$a;
.super Ljava/lang/Object;
.source "LogEvent.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/l;
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
.method public abstract a()Lk3/l;
.end method

.method public abstract b(Ljava/lang/Integer;)Lk3/l$a;
.end method

.method public abstract c(J)Lk3/l$a;
.end method

.method public abstract d(J)Lk3/l$a;
.end method

.method public abstract e(Lk3/o;)Lk3/l$a;
.end method

.method abstract f([B)Lk3/l$a;
.end method

.method abstract g(Ljava/lang/String;)Lk3/l$a;
.end method

.method public abstract h(J)Lk3/l$a;
.end method
