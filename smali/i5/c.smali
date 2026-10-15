###### Class i5.c (i5.c)
.class final Li5/c;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Li5/g;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Li5/c;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    :cond_a
    iput p1, p0, Li5/c;->a:I

    .line 3
    iput p2, p0, Li5/c;->b:I

    .line 4
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Li5/c;->c:Ljava/util/Map;

    .line 5
    invoke-static {}, Li5/c;->a()Z

    return-void
.end method

.method private static a()Z
    .registers 3

    const-string v0, "firebear.preference"

    .line 1
    invoke-static {v0}, Li5/j1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "local"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v1, "BiChannelGoogleApi"

    const-string v2, "Found local preference, will always use local service instance"

    .line 3
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return v0
.end method


# virtual methods
.method public final o(Ljava/lang/String;)Z
    .registers 6

    .line 1
    iget v0, p0, Li5/c;->a:I

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    iget v2, p0, Li5/c;->b:I

    const/4 v3, 0x0

    if-gt v2, v0, :cond_c

    return v3

    .line 3
    :cond_c
    iget-object v0, p0, Li5/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1a

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 5
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Li5/c;->a:I

    if-le v0, v2, :cond_2b

    iget v0, p0, Li5/c;->b:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt v0, p1, :cond_2b

    return v1

    :cond_2b
    return v3
.end method
