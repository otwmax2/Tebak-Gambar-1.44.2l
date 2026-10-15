###### Class t3.e (t3.e)
.class abstract Lt3/e;
.super Ljava/lang/Object;
.source "EventStoreConfig.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt3/e$a;
    }
.end annotation


# static fields
.field static final a:Lt3/e;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lt3/e;->a()Lt3/e$a;

    move-result-object v0

    const-wide/32 v1, 0xa00000

    .line 2
    invoke-virtual {v0, v1, v2}, Lt3/e$a;->f(J)Lt3/e$a;

    move-result-object v0

    const/16 v1, 0xc8

    .line 3
    invoke-virtual {v0, v1}, Lt3/e$a;->d(I)Lt3/e$a;

    move-result-object v0

    const/16 v1, 0x2710

    .line 4
    invoke-virtual {v0, v1}, Lt3/e$a;->b(I)Lt3/e$a;

    move-result-object v0

    const-wide/32 v1, 0x240c8400

    .line 5
    invoke-virtual {v0, v1, v2}, Lt3/e$a;->c(J)Lt3/e$a;

    move-result-object v0

    const v1, 0x14000

    .line 6
    invoke-virtual {v0, v1}, Lt3/e$a;->e(I)Lt3/e$a;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lt3/e$a;->a()Lt3/e;

    move-result-object v0

    sput-object v0, Lt3/e;->a:Lt3/e;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lt3/e$a;
    .registers 1

    .line 1
    new-instance v0, Lt3/a$b;

    invoke-direct {v0}, Lt3/a$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method abstract b()I
.end method

.method abstract c()J
.end method

.method abstract d()I
.end method

.method abstract e()I
.end method

.method abstract f()J
.end method

###### Class t3.e.a (t3.e$a)
.class abstract Lt3/e$a;
.super Ljava/lang/Object;
.source "EventStoreConfig.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lt3/e;
.end method

.method abstract b(I)Lt3/e$a;
.end method

.method abstract c(J)Lt3/e$a;
.end method

.method abstract d(I)Lt3/e$a;
.end method

.method abstract e(I)Lt3/e$a;
.end method

.method abstract f(J)Lt3/e$a;
.end method
