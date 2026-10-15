###### Class l3.p (l3.p)
.class public abstract Ll3/p;
.super Ljava/lang/Object;
.source "TransportContext.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll3/p$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ll3/p$a;
    .registers 2

    .line 1
    new-instance v0, Ll3/d$b;

    invoke-direct {v0}, Ll3/d$b;-><init>()V

    sget-object v1, Lj3/d;->o:Lj3/d;

    invoke-virtual {v0, v1}, Ll3/d$b;->d(Lj3/d;)Ll3/p$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()[B
.end method

.method public abstract d()Lj3/d;
.end method

.method public e()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Ll3/p;->c()[B

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public f(Lj3/d;)Ll3/p;
    .registers 4

    .line 1
    invoke-static {}, Ll3/p;->a()Ll3/p$a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ll3/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll3/p$a;->b(Ljava/lang/String;)Ll3/p$a;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Ll3/p$a;->d(Lj3/d;)Ll3/p$a;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Ll3/p;->c()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ll3/p$a;->c([B)Ll3/p$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ll3/p$a;->a()Ll3/p;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Ll3/p;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-virtual {p0}, Ll3/p;->d()Lj3/d;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-virtual {p0}, Ll3/p;->c()[B

    move-result-object v1

    const/4 v2, 0x2

    if-nez v1, :cond_1b

    const-string v1, ""

    goto :goto_23

    :cond_1b
    invoke-virtual {p0}, Ll3/p;->c()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    :goto_23
    aput-object v1, v0, v2

    const-string v1, "TransportContext(%s, %s, %s)"

    .line 4
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class l3.p.a (l3.p$a)
.class public abstract Ll3/p$a;
.super Ljava/lang/Object;
.source "TransportContext.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/p;
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
.method public abstract a()Ll3/p;
.end method

.method public abstract b(Ljava/lang/String;)Ll3/p$a;
.end method

.method public abstract c([B)Ll3/p$a;
.end method

.method public abstract d(Lj3/d;)Ll3/p$a;
.end method
