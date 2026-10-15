###### Class s5.f0 (s5.f0)
.class public abstract Ls5/f0;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/f0$b;,
        Ls5/f0$a;,
        Ls5/f0$e;,
        Ls5/f0$c;,
        Ls5/f0$d;
    }
.end annotation


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ls5/f0;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/nio/charset/Charset;
    .registers 1

    .line 1
    sget-object v0, Ls5/f0;->a:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public static b()Ls5/f0$b;
    .registers 1

    .line 1
    new-instance v0, Ls5/b$b;

    invoke-direct {v0}, Ls5/b$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract c()Ls5/f0$a;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public abstract j()Ls5/f0$d;
.end method

.method public abstract k()I
.end method

.method public abstract l()Ljava/lang/String;
.end method

.method public abstract m()Ls5/f0$e;
.end method

.method protected abstract n()Ls5/f0$b;
.end method

.method public o(Ljava/lang/String;)Ls5/f0;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ls5/f0;->n()Ls5/f0$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Ls5/f0$b;->c(Ljava/lang/String;)Ls5/f0$b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ls5/f0;->m()Ls5/f0$e;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 3
    invoke-virtual {p0}, Ls5/f0;->m()Ls5/f0$e;

    move-result-object v1

    invoke-virtual {v1, p1}, Ls5/f0$e;->p(Ljava/lang/String;)Ls5/f0$e;

    move-result-object p1

    invoke-virtual {v0, p1}, Ls5/f0$b;->l(Ls5/f0$e;)Ls5/f0$b;

    .line 4
    :cond_19
    invoke-virtual {v0}, Ls5/f0$b;->a()Ls5/f0;

    move-result-object p1

    return-object p1
.end method

.method public p(Ls5/f0$a;)Ls5/f0;
    .registers 3

    if-nez p1, :cond_4

    move-object p1, p0

    goto :goto_10

    .line 1
    :cond_4
    invoke-virtual {p0}, Ls5/f0;->n()Ls5/f0$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Ls5/f0$b;->b(Ls5/f0$a;)Ls5/f0$b;

    move-result-object p1

    invoke-virtual {p1}, Ls5/f0$b;->a()Ls5/f0;

    move-result-object p1

    :goto_10
    return-object p1
.end method

.method public q(Ljava/util/List;)Ls5/f0;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls5/f0$e$d;",
            ">;)",
            "Ls5/f0;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls5/f0;->m()Ls5/f0$e;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2
    invoke-virtual {p0}, Ls5/f0;->n()Ls5/f0$b;

    move-result-object v0

    invoke-virtual {p0}, Ls5/f0;->m()Ls5/f0$e;

    move-result-object v1

    invoke-virtual {v1, p1}, Ls5/f0$e;->q(Ljava/util/List;)Ls5/f0$e;

    move-result-object p1

    invoke-virtual {v0, p1}, Ls5/f0$b;->l(Ls5/f0$e;)Ls5/f0$b;

    move-result-object p1

    invoke-virtual {p1}, Ls5/f0$b;->a()Ls5/f0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Reports without sessions cannot have events added to them."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(Ljava/lang/String;)Ls5/f0;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ls5/f0;->n()Ls5/f0$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Ls5/f0$b;->f(Ljava/lang/String;)Ls5/f0$b;

    move-result-object p1

    invoke-virtual {p1}, Ls5/f0$b;->a()Ls5/f0;

    move-result-object p1

    return-object p1
.end method

.method public s(Ls5/f0$d;)Ls5/f0;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ls5/f0;->n()Ls5/f0$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ls5/f0$b;->l(Ls5/f0$e;)Ls5/f0$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Ls5/f0$b;->i(Ls5/f0$d;)Ls5/f0$b;

    move-result-object p1

    invoke-virtual {p1}, Ls5/f0$b;->a()Ls5/f0;

    move-result-object p1

    return-object p1
.end method

.method public t(JZLjava/lang/String;)Ls5/f0;
    .registers 7

    .line 1
    invoke-virtual {p0}, Ls5/f0;->n()Ls5/f0$b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ls5/f0;->m()Ls5/f0$e;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 3
    invoke-virtual {p0}, Ls5/f0;->m()Ls5/f0$e;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Ls5/f0$e;->r(JZLjava/lang/String;)Ls5/f0$e;

    move-result-object p1

    invoke-virtual {v0, p1}, Ls5/f0$b;->l(Ls5/f0$e;)Ls5/f0$b;

    .line 4
    :cond_15
    invoke-virtual {v0}, Ls5/f0$b;->a()Ls5/f0;

    move-result-object p1

    return-object p1
.end method

###### Class s5.f0.a (s5.f0$a)
.class public abstract Ls5/f0$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/f0$a$a;,
        Ls5/f0$a$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls5/f0$a$b;
    .registers 1

    .line 1
    new-instance v0, Ls5/c$b;

    invoke-direct {v0}, Ls5/c$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls5/f0$a$a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()J
.end method

.method public abstract g()I
.end method

.method public abstract h()J
.end method

.method public abstract i()J
.end method

.method public abstract j()Ljava/lang/String;
.end method

###### Class s5.f0.a.AbstractC0230a (s5.f0$a$a)
.class public abstract Ls5/f0$a$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/f0$a$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls5/f0$a$a$a;
    .registers 1

    .line 1
    new-instance v0, Ls5/d$b;

    invoke-direct {v0}, Ls5/d$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

###### Class s5.f0.a.AbstractC0230a.AbstractC0231a (s5.f0$a$a$a)
.class public abstract Ls5/f0$a$a$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$a$a;
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
.method public abstract a()Ls5/f0$a$a;
.end method

.method public abstract b(Ljava/lang/String;)Ls5/f0$a$a$a;
.end method

.method public abstract c(Ljava/lang/String;)Ls5/f0$a$a$a;
.end method

.method public abstract d(Ljava/lang/String;)Ls5/f0$a$a$a;
.end method

###### Class s5.f0.a.b (s5.f0$a$b)
.class public abstract Ls5/f0$a$b;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ls5/f0$a;
.end method

.method public abstract b(Ljava/util/List;)Ls5/f0$a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls5/f0$a$a;",
            ">;)",
            "Ls5/f0$a$b;"
        }
    .end annotation
.end method

.method public abstract c(I)Ls5/f0$a$b;
.end method

.method public abstract d(I)Ls5/f0$a$b;
.end method

.method public abstract e(Ljava/lang/String;)Ls5/f0$a$b;
.end method

.method public abstract f(J)Ls5/f0$a$b;
.end method

.method public abstract g(I)Ls5/f0$a$b;
.end method

.method public abstract h(J)Ls5/f0$a$b;
.end method

.method public abstract i(J)Ls5/f0$a$b;
.end method

.method public abstract j(Ljava/lang/String;)Ls5/f0$a$b;
.end method

###### Class s5.f0.b (s5.f0$b)
.class public abstract Ls5/f0$b;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ls5/f0;
.end method

.method public abstract b(Ls5/f0$a;)Ls5/f0$b;
.end method

.method public abstract c(Ljava/lang/String;)Ls5/f0$b;
.end method

.method public abstract d(Ljava/lang/String;)Ls5/f0$b;
.end method

.method public abstract e(Ljava/lang/String;)Ls5/f0$b;
.end method

.method public abstract f(Ljava/lang/String;)Ls5/f0$b;
.end method

.method public abstract g(Ljava/lang/String;)Ls5/f0$b;
.end method

.method public abstract h(Ljava/lang/String;)Ls5/f0$b;
.end method

.method public abstract i(Ls5/f0$d;)Ls5/f0$b;
.end method

.method public abstract j(I)Ls5/f0$b;
.end method

.method public abstract k(Ljava/lang/String;)Ls5/f0$b;
.end method

.method public abstract l(Ls5/f0$e;)Ls5/f0$b;
.end method

###### Class s5.f0.c (s5.f0$c)
.class public abstract Ls5/f0$c;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/f0$c$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls5/f0$c$a;
    .registers 1

    .line 1
    new-instance v0, Ls5/e$b;

    invoke-direct {v0}, Ls5/e$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

###### Class s5.f0.c.a (s5.f0$c$a)
.class public abstract Ls5/f0$c$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$c;
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
.method public abstract a()Ls5/f0$c;
.end method

.method public abstract b(Ljava/lang/String;)Ls5/f0$c$a;
.end method

.method public abstract c(Ljava/lang/String;)Ls5/f0$c$a;
.end method

###### Class s5.f0.d (s5.f0$d)
.class public abstract Ls5/f0$d;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/f0$d$a;,
        Ls5/f0$d$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls5/f0$d$a;
    .registers 1

    .line 1
    new-instance v0, Ls5/f$b;

    invoke-direct {v0}, Ls5/f$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls5/f0$d$b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c()Ljava/lang/String;
.end method

###### Class s5.f0.d.a (s5.f0$d$a)
.class public abstract Ls5/f0$d$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$d;
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
.method public abstract a()Ls5/f0$d;
.end method

.method public abstract b(Ljava/util/List;)Ls5/f0$d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls5/f0$d$b;",
            ">;)",
            "Ls5/f0$d$a;"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;)Ls5/f0$d$a;
.end method

###### Class s5.f0.d.b (s5.f0$d$b)
.class public abstract Ls5/f0$d$b;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/f0$d$b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls5/f0$d$b$a;
    .registers 1

    .line 1
    new-instance v0, Ls5/g$b;

    invoke-direct {v0}, Ls5/g$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()[B
.end method

.method public abstract c()Ljava/lang/String;
.end method

###### Class s5.f0.d.b.a (s5.f0$d$b$a)
.class public abstract Ls5/f0$d$b$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$d$b;
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
.method public abstract a()Ls5/f0$d$b;
.end method

.method public abstract b([B)Ls5/f0$d$b$a;
.end method

.method public abstract c(Ljava/lang/String;)Ls5/f0$d$b$a;
.end method

###### Class s5.f0.e (s5.f0$e)
.class public abstract Ls5/f0$e;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/f0$e$d;,
        Ls5/f0$e$c;,
        Ls5/f0$e$e;,
        Ls5/f0$e$a;,
        Ls5/f0$e$f;,
        Ls5/f0$e$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls5/f0$e$b;
    .registers 2

    .line 1
    new-instance v0, Ls5/h$b;

    invoke-direct {v0}, Ls5/h$b;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ls5/h$b;->d(Z)Ls5/f0$e$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract b()Ls5/f0$e$a;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ls5/f0$e$c;
.end method

.method public abstract e()Ljava/lang/Long;
.end method

.method public abstract f()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls5/f0$e$d;",
            ">;"
        }
    .end annotation
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()I
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public j()[B
    .registers 3

    .line 1
    invoke-virtual {p0}, Ls5/f0$e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ls5/f0;->a()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract k()Ls5/f0$e$e;
.end method

.method public abstract l()J
.end method

.method public abstract m()Ls5/f0$e$f;
.end method

.method public abstract n()Z
.end method

.method public abstract o()Ls5/f0$e$b;
.end method

.method p(Ljava/lang/String;)Ls5/f0$e;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ls5/f0$e;->o()Ls5/f0$e$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Ls5/f0$e$b;->c(Ljava/lang/String;)Ls5/f0$e$b;

    move-result-object p1

    invoke-virtual {p1}, Ls5/f0$e$b;->a()Ls5/f0$e;

    move-result-object p1

    return-object p1
.end method

.method q(Ljava/util/List;)Ls5/f0$e;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls5/f0$e$d;",
            ">;)",
            "Ls5/f0$e;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls5/f0$e;->o()Ls5/f0$e$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Ls5/f0$e$b;->g(Ljava/util/List;)Ls5/f0$e$b;

    move-result-object p1

    invoke-virtual {p1}, Ls5/f0$e$b;->a()Ls5/f0$e;

    move-result-object p1

    return-object p1
.end method

.method r(JZLjava/lang/String;)Ls5/f0$e;
    .registers 6

    .line 1
    invoke-virtual {p0}, Ls5/f0$e;->o()Ls5/f0$e$b;

    move-result-object v0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ls5/f0$e$b;->f(Ljava/lang/Long;)Ls5/f0$e$b;

    .line 3
    invoke-virtual {v0, p3}, Ls5/f0$e$b;->d(Z)Ls5/f0$e$b;

    if-eqz p4, :cond_1f

    .line 4
    invoke-static {}, Ls5/f0$e$f;->a()Ls5/f0$e$f$a;

    move-result-object p1

    invoke-virtual {p1, p4}, Ls5/f0$e$f$a;->b(Ljava/lang/String;)Ls5/f0$e$f$a;

    move-result-object p1

    invoke-virtual {p1}, Ls5/f0$e$f$a;->a()Ls5/f0$e$f;

    move-result-object p1

    invoke-virtual {v0, p1}, Ls5/f0$e$b;->n(Ls5/f0$e$f;)Ls5/f0$e$b;

    .line 5
    :cond_1f
    invoke-virtual {v0}, Ls5/f0$e$b;->a()Ls5/f0$e;

    move-result-object p1

    return-object p1
.end method

###### Class s5.f0.e.a (s5.f0$e$a)
.class public abstract Ls5/f0$e$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/f0$e$a$b;,
        Ls5/f0$e$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls5/f0$e$a$a;
    .registers 1

    .line 1
    new-instance v0, Ls5/i$b;

    invoke-direct {v0}, Ls5/i$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Ls5/f0$e$a$b;
.end method

.method public abstract h()Ljava/lang/String;
.end method

###### Class s5.f0.e.a.AbstractC0232a (s5.f0$e$a$a)
.class public abstract Ls5/f0$e$a$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$a;
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
.method public abstract a()Ls5/f0$e$a;
.end method

.method public abstract b(Ljava/lang/String;)Ls5/f0$e$a$a;
.end method

.method public abstract c(Ljava/lang/String;)Ls5/f0$e$a$a;
.end method

.method public abstract d(Ljava/lang/String;)Ls5/f0$e$a$a;
.end method

.method public abstract e(Ljava/lang/String;)Ls5/f0$e$a$a;
.end method

.method public abstract f(Ljava/lang/String;)Ls5/f0$e$a$a;
.end method

.method public abstract g(Ljava/lang/String;)Ls5/f0$e$a$a;
.end method

###### Class s5.f0.e.a.b (s5.f0$e$a$b)
.class public abstract Ls5/f0$e$a$b;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

###### Class s5.f0.e.b (s5.f0$e$b)
.class public abstract Ls5/f0$e$b;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ls5/f0$e;
.end method

.method public abstract b(Ls5/f0$e$a;)Ls5/f0$e$b;
.end method

.method public abstract c(Ljava/lang/String;)Ls5/f0$e$b;
.end method

.method public abstract d(Z)Ls5/f0$e$b;
.end method

.method public abstract e(Ls5/f0$e$c;)Ls5/f0$e$b;
.end method

.method public abstract f(Ljava/lang/Long;)Ls5/f0$e$b;
.end method

.method public abstract g(Ljava/util/List;)Ls5/f0$e$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls5/f0$e$d;",
            ">;)",
            "Ls5/f0$e$b;"
        }
    .end annotation
.end method

.method public abstract h(Ljava/lang/String;)Ls5/f0$e$b;
.end method

.method public abstract i(I)Ls5/f0$e$b;
.end method

.method public abstract j(Ljava/lang/String;)Ls5/f0$e$b;
.end method

.method public k([B)Ls5/f0$e$b;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ls5/f0;->a()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Ls5/f0$e$b;->j(Ljava/lang/String;)Ls5/f0$e$b;

    move-result-object p1

    return-object p1
.end method

.method public abstract l(Ls5/f0$e$e;)Ls5/f0$e$b;
.end method

.method public abstract m(J)Ls5/f0$e$b;
.end method

.method public abstract n(Ls5/f0$e$f;)Ls5/f0$e$b;
.end method

###### Class s5.f0.e.c (s5.f0$e$c)
.class public abstract Ls5/f0$e$c;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/f0$e$c$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls5/f0$e$c$a;
    .registers 1

    .line 1
    new-instance v0, Ls5/k$b;

    invoke-direct {v0}, Ls5/k$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()I
.end method

.method public abstract c()I
.end method

.method public abstract d()J
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()J
.end method

.method public abstract i()I
.end method

.method public abstract j()Z
.end method

###### Class s5.f0.e.c.a (s5.f0$e$c$a)
.class public abstract Ls5/f0$e$c$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$c;
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
.method public abstract a()Ls5/f0$e$c;
.end method

.method public abstract b(I)Ls5/f0$e$c$a;
.end method

.method public abstract c(I)Ls5/f0$e$c$a;
.end method

.method public abstract d(J)Ls5/f0$e$c$a;
.end method

.method public abstract e(Ljava/lang/String;)Ls5/f0$e$c$a;
.end method

.method public abstract f(Ljava/lang/String;)Ls5/f0$e$c$a;
.end method

.method public abstract g(Ljava/lang/String;)Ls5/f0$e$c$a;
.end method

.method public abstract h(J)Ls5/f0$e$c$a;
.end method

.method public abstract i(Z)Ls5/f0$e$c$a;
.end method

.method public abstract j(I)Ls5/f0$e$c$a;
.end method

###### Class s5.f0.e.d (s5.f0$e$d)
.class public abstract Ls5/f0$e$d;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/f0$e$d$b;,
        Ls5/f0$e$d$e;,
        Ls5/f0$e$d$f;,
        Ls5/f0$e$d$d;,
        Ls5/f0$e$d$c;,
        Ls5/f0$e$d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls5/f0$e$d$b;
    .registers 1

    .line 1
    new-instance v0, Ls5/l$b;

    invoke-direct {v0}, Ls5/l$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ls5/f0$e$d$a;
.end method

.method public abstract c()Ls5/f0$e$d$c;
.end method

.method public abstract d()Ls5/f0$e$d$d;
.end method

.method public abstract e()Ls5/f0$e$d$f;
.end method

.method public abstract f()J
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()Ls5/f0$e$d$b;
.end method

###### Class s5.f0.e.d.a (s5.f0$e$d$a)
.class public abstract Ls5/f0$e$d$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/f0$e$d$a$a;,
        Ls5/f0$e$d$a$c;,
        Ls5/f0$e$d$a$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls5/f0$e$d$a$a;
    .registers 1

    .line 1
    new-instance v0, Ls5/m$b;

    invoke-direct {v0}, Ls5/m$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls5/f0$e$d$a$c;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c()Ljava/lang/Boolean;
.end method

.method public abstract d()Ls5/f0$e$d$a$c;
.end method

.method public abstract e()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls5/f0$c;",
            ">;"
        }
    .end annotation
.end method

.method public abstract f()Ls5/f0$e$d$a$b;
.end method

.method public abstract g()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls5/f0$c;",
            ">;"
        }
    .end annotation
.end method

.method public abstract h()I
.end method

.method public abstract i()Ls5/f0$e$d$a$a;
.end method

###### Class s5.f0.e.d.a.AbstractC0233a (s5.f0$e$d$a$a)
.class public abstract Ls5/f0$e$d$a$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d$a;
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
.method public abstract a()Ls5/f0$e$d$a;
.end method

.method public abstract b(Ljava/util/List;)Ls5/f0$e$d$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls5/f0$e$d$a$c;",
            ">;)",
            "Ls5/f0$e$d$a$a;"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/Boolean;)Ls5/f0$e$d$a$a;
.end method

.method public abstract d(Ls5/f0$e$d$a$c;)Ls5/f0$e$d$a$a;
.end method

.method public abstract e(Ljava/util/List;)Ls5/f0$e$d$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls5/f0$c;",
            ">;)",
            "Ls5/f0$e$d$a$a;"
        }
    .end annotation
.end method

.method public abstract f(Ls5/f0$e$d$a$b;)Ls5/f0$e$d$a$a;
.end method

.method public abstract g(Ljava/util/List;)Ls5/f0$e$d$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls5/f0$c;",
            ">;)",
            "Ls5/f0$e$d$a$a;"
        }
    .end annotation
.end method

.method public abstract h(I)Ls5/f0$e$d$a$a;
.end method

###### Class s5.f0.e.d.a.b (s5.f0$e$d$a$b)
.class public abstract Ls5/f0$e$d$a$b;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/f0$e$d$a$b$b;,
        Ls5/f0$e$d$a$b$a;,
        Ls5/f0$e$d$a$b$d;,
        Ls5/f0$e$d$a$b$c;,
        Ls5/f0$e$d$a$b$e;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls5/f0$e$d$a$b$b;
    .registers 1

    .line 1
    new-instance v0, Ls5/n$b;

    invoke-direct {v0}, Ls5/n$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ls5/f0$a;
.end method

.method public abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls5/f0$e$d$a$b$a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()Ls5/f0$e$d$a$b$c;
.end method

.method public abstract e()Ls5/f0$e$d$a$b$d;
.end method

.method public abstract f()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls5/f0$e$d$a$b$e;",
            ">;"
        }
    .end annotation
.end method

###### Class s5.f0.e.d.a.b.AbstractC0234a (s5.f0$e$d$a$b$a)
.class public abstract Ls5/f0$e$d$a$b$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/f0$e$d$a$b$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls5/f0$e$d$a$b$a$a;
    .registers 1

    .line 1
    new-instance v0, Ls5/o$b;

    invoke-direct {v0}, Ls5/o$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()J
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()J
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public f()[B
    .registers 3

    .line 1
    invoke-virtual {p0}, Ls5/f0$e$d$a$b$a;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2
    invoke-static {}, Ls5/f0;->a()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

###### Class s5.f0.e.d.a.b.AbstractC0234a.AbstractC0235a (s5.f0$e$d$a$b$a$a)
.class public abstract Ls5/f0$e$d$a$b$a$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d$a$b$a;
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
.method public abstract a()Ls5/f0$e$d$a$b$a;
.end method

.method public abstract b(J)Ls5/f0$e$d$a$b$a$a;
.end method

.method public abstract c(Ljava/lang/String;)Ls5/f0$e$d$a$b$a$a;
.end method

.method public abstract d(J)Ls5/f0$e$d$a$b$a$a;
.end method

.method public abstract e(Ljava/lang/String;)Ls5/f0$e$d$a$b$a$a;
.end method

.method public f([B)Ls5/f0$e$d$a$b$a$a;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ls5/f0;->a()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Ls5/f0$e$d$a$b$a$a;->e(Ljava/lang/String;)Ls5/f0$e$d$a$b$a$a;

    move-result-object p1

    return-object p1
.end method

###### Class s5.f0.e.d.a.b.AbstractC0236b (s5.f0$e$d$a$b$b)
.class public abstract Ls5/f0$e$d$a$b$b;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ls5/f0$e$d$a$b;
.end method

.method public abstract b(Ls5/f0$a;)Ls5/f0$e$d$a$b$b;
.end method

.method public abstract c(Ljava/util/List;)Ls5/f0$e$d$a$b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls5/f0$e$d$a$b$a;",
            ">;)",
            "Ls5/f0$e$d$a$b$b;"
        }
    .end annotation
.end method

.method public abstract d(Ls5/f0$e$d$a$b$c;)Ls5/f0$e$d$a$b$b;
.end method

.method public abstract e(Ls5/f0$e$d$a$b$d;)Ls5/f0$e$d$a$b$b;
.end method

.method public abstract f(Ljava/util/List;)Ls5/f0$e$d$a$b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls5/f0$e$d$a$b$e;",
            ">;)",
            "Ls5/f0$e$d$a$b$b;"
        }
    .end annotation
.end method

###### Class s5.f0.e.d.a.b.c (s5.f0$e$d$a$b$c)
.class public abstract Ls5/f0$e$d$a$b$c;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/f0$e$d$a$b$c$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls5/f0$e$d$a$b$c$a;
    .registers 1

    .line 1
    new-instance v0, Ls5/p$b;

    invoke-direct {v0}, Ls5/p$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ls5/f0$e$d$a$b$c;
.end method

.method public abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls5/f0$e$d$a$b$e$b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()I
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/String;
.end method

###### Class s5.f0.e.d.a.b.c.AbstractC0237a (s5.f0$e$d$a$b$c$a)
.class public abstract Ls5/f0$e$d$a$b$c$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d$a$b$c;
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
.method public abstract a()Ls5/f0$e$d$a$b$c;
.end method

.method public abstract b(Ls5/f0$e$d$a$b$c;)Ls5/f0$e$d$a$b$c$a;
.end method

.method public abstract c(Ljava/util/List;)Ls5/f0$e$d$a$b$c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls5/f0$e$d$a$b$e$b;",
            ">;)",
            "Ls5/f0$e$d$a$b$c$a;"
        }
    .end annotation
.end method

.method public abstract d(I)Ls5/f0$e$d$a$b$c$a;
.end method

.method public abstract e(Ljava/lang/String;)Ls5/f0$e$d$a$b$c$a;
.end method

.method public abstract f(Ljava/lang/String;)Ls5/f0$e$d$a$b$c$a;
.end method

###### Class s5.f0.e.d.a.b.AbstractC0238d (s5.f0$e$d$a$b$d)
.class public abstract Ls5/f0$e$d$a$b$d;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/f0$e$d$a$b$d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls5/f0$e$d$a$b$d$a;
    .registers 1

    .line 1
    new-instance v0, Ls5/q$b;

    invoke-direct {v0}, Ls5/q$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()J
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

###### Class s5.f0.e.d.a.b.AbstractC0238d.AbstractC0239a (s5.f0$e$d$a$b$d$a)
.class public abstract Ls5/f0$e$d$a$b$d$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d$a$b$d;
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
.method public abstract a()Ls5/f0$e$d$a$b$d;
.end method

.method public abstract b(J)Ls5/f0$e$d$a$b$d$a;
.end method

.method public abstract c(Ljava/lang/String;)Ls5/f0$e$d$a$b$d$a;
.end method

.method public abstract d(Ljava/lang/String;)Ls5/f0$e$d$a$b$d$a;
.end method

###### Class s5.f0.e.d.a.b.AbstractC0240e (s5.f0$e$d$a$b$e)
.class public abstract Ls5/f0$e$d$a$b$e;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/f0$e$d$a$b$e$a;,
        Ls5/f0$e$d$a$b$e$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls5/f0$e$d$a$b$e$a;
    .registers 1

    .line 1
    new-instance v0, Ls5/r$b;

    invoke-direct {v0}, Ls5/r$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls5/f0$e$d$a$b$e$b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c()I
.end method

.method public abstract d()Ljava/lang/String;
.end method

###### Class s5.f0.e.d.a.b.AbstractC0240e.AbstractC0241a (s5.f0$e$d$a$b$e$a)
.class public abstract Ls5/f0$e$d$a$b$e$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d$a$b$e;
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
.method public abstract a()Ls5/f0$e$d$a$b$e;
.end method

.method public abstract b(Ljava/util/List;)Ls5/f0$e$d$a$b$e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls5/f0$e$d$a$b$e$b;",
            ">;)",
            "Ls5/f0$e$d$a$b$e$a;"
        }
    .end annotation
.end method

.method public abstract c(I)Ls5/f0$e$d$a$b$e$a;
.end method

.method public abstract d(Ljava/lang/String;)Ls5/f0$e$d$a$b$e$a;
.end method

###### Class s5.f0.e.d.a.b.AbstractC0240e.AbstractC0242b (s5.f0$e$d$a$b$e$b)
.class public abstract Ls5/f0$e$d$a$b$e$b;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d$a$b$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/f0$e$d$a$b$e$b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls5/f0$e$d$a$b$e$b$a;
    .registers 1

    .line 1
    new-instance v0, Ls5/s$b;

    invoke-direct {v0}, Ls5/s$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()I
.end method

.method public abstract d()J
.end method

.method public abstract e()J
.end method

.method public abstract f()Ljava/lang/String;
.end method

###### Class s5.f0.e.d.a.b.AbstractC0240e.AbstractC0242b.AbstractC0243a (s5.f0$e$d$a$b$e$b$a)
.class public abstract Ls5/f0$e$d$a$b$e$b$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d$a$b$e$b;
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
.method public abstract a()Ls5/f0$e$d$a$b$e$b;
.end method

.method public abstract b(Ljava/lang/String;)Ls5/f0$e$d$a$b$e$b$a;
.end method

.method public abstract c(I)Ls5/f0$e$d$a$b$e$b$a;
.end method

.method public abstract d(J)Ls5/f0$e$d$a$b$e$b$a;
.end method

.method public abstract e(J)Ls5/f0$e$d$a$b$e$b$a;
.end method

.method public abstract f(Ljava/lang/String;)Ls5/f0$e$d$a$b$e$b$a;
.end method

###### Class s5.f0.e.d.a.c (s5.f0$e$d$a$c)
.class public abstract Ls5/f0$e$d$a$c;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/f0$e$d$a$c$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls5/f0$e$d$a$c$a;
    .registers 1

    .line 1
    new-instance v0, Ls5/t$b;

    invoke-direct {v0}, Ls5/t$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()I
.end method

.method public abstract c()I
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Z
.end method

###### Class s5.f0.e.d.a.c.AbstractC0244a (s5.f0$e$d$a$c$a)
.class public abstract Ls5/f0$e$d$a$c$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d$a$c;
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
.method public abstract a()Ls5/f0$e$d$a$c;
.end method

.method public abstract b(Z)Ls5/f0$e$d$a$c$a;
.end method

.method public abstract c(I)Ls5/f0$e$d$a$c$a;
.end method

.method public abstract d(I)Ls5/f0$e$d$a$c$a;
.end method

.method public abstract e(Ljava/lang/String;)Ls5/f0$e$d$a$c$a;
.end method

###### Class s5.f0.e.d.b (s5.f0$e$d$b)
.class public abstract Ls5/f0$e$d$b;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ls5/f0$e$d;
.end method

.method public abstract b(Ls5/f0$e$d$a;)Ls5/f0$e$d$b;
.end method

.method public abstract c(Ls5/f0$e$d$c;)Ls5/f0$e$d$b;
.end method

.method public abstract d(Ls5/f0$e$d$d;)Ls5/f0$e$d$b;
.end method

.method public abstract e(Ls5/f0$e$d$f;)Ls5/f0$e$d$b;
.end method

.method public abstract f(J)Ls5/f0$e$d$b;
.end method

.method public abstract g(Ljava/lang/String;)Ls5/f0$e$d$b;
.end method

###### Class s5.f0.e.d.c (s5.f0$e$d$c)
.class public abstract Ls5/f0$e$d$c;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/f0$e$d$c$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls5/f0$e$d$c$a;
    .registers 1

    .line 1
    new-instance v0, Ls5/u$b;

    invoke-direct {v0}, Ls5/u$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/Double;
.end method

.method public abstract c()I
.end method

.method public abstract d()J
.end method

.method public abstract e()I
.end method

.method public abstract f()J
.end method

.method public abstract g()Z
.end method

###### Class s5.f0.e.d.c.a (s5.f0$e$d$c$a)
.class public abstract Ls5/f0$e$d$c$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d$c;
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
.method public abstract a()Ls5/f0$e$d$c;
.end method

.method public abstract b(Ljava/lang/Double;)Ls5/f0$e$d$c$a;
.end method

.method public abstract c(I)Ls5/f0$e$d$c$a;
.end method

.method public abstract d(J)Ls5/f0$e$d$c$a;
.end method

.method public abstract e(I)Ls5/f0$e$d$c$a;
.end method

.method public abstract f(Z)Ls5/f0$e$d$c$a;
.end method

.method public abstract g(J)Ls5/f0$e$d$c$a;
.end method

###### Class s5.f0.e.d.AbstractC0245d (s5.f0$e$d$d)
.class public abstract Ls5/f0$e$d$d;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/f0$e$d$d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls5/f0$e$d$d$a;
    .registers 1

    .line 1
    new-instance v0, Ls5/v$b;

    invoke-direct {v0}, Ls5/v$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

###### Class s5.f0.e.d.AbstractC0245d.a (s5.f0$e$d$d$a)
.class public abstract Ls5/f0$e$d$d$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d$d;
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
.method public abstract a()Ls5/f0$e$d$d;
.end method

.method public abstract b(Ljava/lang/String;)Ls5/f0$e$d$d$a;
.end method

###### Class s5.f0.e.d.AbstractC0246e (s5.f0$e$d$e)
.class public abstract Ls5/f0$e$d$e;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/f0$e$d$e$b;,
        Ls5/f0$e$d$e$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls5/f0$e$d$e$a;
    .registers 1

    .line 1
    new-instance v0, Ls5/w$b;

    invoke-direct {v0}, Ls5/w$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ls5/f0$e$d$e$b;
.end method

.method public abstract e()J
.end method

###### Class s5.f0.e.d.AbstractC0246e.a (s5.f0$e$d$e$a)
.class public abstract Ls5/f0$e$d$e$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d$e;
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
.method public abstract a()Ls5/f0$e$d$e;
.end method

.method public abstract b(Ljava/lang/String;)Ls5/f0$e$d$e$a;
.end method

.method public abstract c(Ljava/lang/String;)Ls5/f0$e$d$e$a;
.end method

.method public abstract d(Ls5/f0$e$d$e$b;)Ls5/f0$e$d$e$a;
.end method

.method public abstract e(J)Ls5/f0$e$d$e$a;
.end method

###### Class s5.f0.e.d.AbstractC0246e.b (s5.f0$e$d$e$b)
.class public abstract Ls5/f0$e$d$e$b;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/f0$e$d$e$b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls5/f0$e$d$e$b$a;
    .registers 1

    .line 1
    new-instance v0, Ls5/x$b;

    invoke-direct {v0}, Ls5/x$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

###### Class s5.f0.e.d.AbstractC0246e.b.a (s5.f0$e$d$e$b$a)
.class public abstract Ls5/f0$e$d$e$b$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d$e$b;
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
.method public abstract a()Ls5/f0$e$d$e$b;
.end method

.method public abstract b(Ljava/lang/String;)Ls5/f0$e$d$e$b$a;
.end method

.method public abstract c(Ljava/lang/String;)Ls5/f0$e$d$e$b$a;
.end method

###### Class s5.f0.e.d.f (s5.f0$e$d$f)
.class public abstract Ls5/f0$e$d$f;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/f0$e$d$f$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls5/f0$e$d$f$a;
    .registers 1

    .line 1
    new-instance v0, Ls5/y$b;

    invoke-direct {v0}, Ls5/y$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls5/f0$e$d$e;",
            ">;"
        }
    .end annotation
.end method

###### Class s5.f0.e.d.f.a (s5.f0$e$d$f$a)
.class public abstract Ls5/f0$e$d$f$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$d$f;
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
.method public abstract a()Ls5/f0$e$d$f;
.end method

.method public abstract b(Ljava/util/List;)Ls5/f0$e$d$f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls5/f0$e$d$e;",
            ">;)",
            "Ls5/f0$e$d$f$a;"
        }
    .end annotation
.end method

###### Class s5.f0.e.AbstractC0247e (s5.f0$e$e)
.class public abstract Ls5/f0$e$e;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/f0$e$e$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls5/f0$e$e$a;
    .registers 1

    .line 1
    new-instance v0, Ls5/z$b;

    invoke-direct {v0}, Ls5/z$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()I
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Z
.end method

###### Class s5.f0.e.AbstractC0247e.a (s5.f0$e$e$a)
.class public abstract Ls5/f0$e$e$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$e;
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
.method public abstract a()Ls5/f0$e$e;
.end method

.method public abstract b(Ljava/lang/String;)Ls5/f0$e$e$a;
.end method

.method public abstract c(Z)Ls5/f0$e$e$a;
.end method

.method public abstract d(I)Ls5/f0$e$e$a;
.end method

.method public abstract e(Ljava/lang/String;)Ls5/f0$e$e$a;
.end method

###### Class s5.f0.e.f (s5.f0$e$f)
.class public abstract Ls5/f0$e$f;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/f0$e$f$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ls5/f0$e$f$a;
    .registers 1

    .line 1
    new-instance v0, Ls5/a0$b;

    invoke-direct {v0}, Ls5/a0$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

###### Class s5.f0.e.f.a (s5.f0$e$f$a)
.class public abstract Ls5/f0$e$f$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f0$e$f;
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
.method public abstract a()Ls5/f0$e$f;
.end method

.method public abstract b(Ljava/lang/String;)Ls5/f0$e$f$a;
.end method
