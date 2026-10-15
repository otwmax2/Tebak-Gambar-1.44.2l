###### Class i5.l0 (i5.l0)
.class final Li5/l0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Li5/a<",
        "Li5/v0;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Li5/v0;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Li5/v0;Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li5/l0;->a:Li5/v0;

    .line 3
    iput-object p2, p0, Li5/l0;->b:Landroid/content/Context;

    return-void
.end method

.method private final a(ZLandroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApi;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "Li5/v0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li5/l0;->a:Li5/v0;

    invoke-virtual {v0}, Li5/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/v0;

    .line 2
    iput-boolean p1, v0, Li5/d;->o:Z

    .line 3
    new-instance p1, Li5/f;

    sget-object v1, Li5/u0;->c:Lcom/google/android/gms/common/api/Api;

    new-instance v2, Lb5/n;

    invoke-direct {v2}, Lb5/n;-><init>()V

    invoke-direct {p1, p2, v1, v0, v2}, Li5/f;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;)V

    return-object p1
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Li5/m0;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_f

    invoke-static {}, Li5/m0;->d()I

    move-result v0

    if-ne v0, v3, :cond_3d

    .line 2
    :cond_f
    iget-object v0, p0, Li5/l0;->b:Landroid/content/Context;

    const-string v3, "com.google.firebase.auth"

    .line 3
    invoke-static {v0, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    const/4 v3, 0x1

    goto :goto_37

    .line 4
    :cond_1b
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->p()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v3

    iget-object v4, p0, Li5/l0;->b:Landroid/content/Context;

    const v5, 0xbdfcb8

    .line 5
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/common/GoogleApiAvailability;->j(Landroid/content/Context;I)I

    move-result v3

    if-eqz v3, :cond_2f

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2f

    const/4 v3, 0x0

    goto :goto_37

    .line 6
    :cond_2f
    iget-object v3, p0, Li5/l0;->b:Landroid/content/Context;

    const-string v4, "com.google.android.gms.firebase_auth"

    .line 7
    invoke-static {v3, v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 8
    :goto_37
    invoke-static {v3}, Li5/m0;->a(I)I

    .line 9
    invoke-static {v0}, Li5/m0;->c(I)I

    .line 10
    :cond_3d
    invoke-static {}, Li5/m0;->d()I

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4b

    .line 11
    iget-object v0, p0, Li5/l0;->b:Landroid/content/Context;

    invoke-direct {p0, v2, v0}, Li5/l0;->a(ZLandroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApi;

    move-result-object v0

    goto :goto_4c

    :cond_4b
    move-object v0, v3

    .line 12
    :goto_4c
    invoke-static {}, Li5/m0;->b()I

    move-result v2

    if-nez v2, :cond_53

    goto :goto_59

    :cond_53
    iget-object v2, p0, Li5/l0;->b:Landroid/content/Context;

    invoke-direct {p0, v1, v2}, Li5/l0;->a(ZLandroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApi;

    move-result-object v3

    .line 13
    :goto_59
    new-instance v1, Li5/c;

    .line 14
    invoke-static {}, Li5/m0;->b()I

    move-result v2

    invoke-static {}, Li5/m0;->d()I

    move-result v4

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v1, v2, v4, v5}, Li5/c;-><init>(IILjava/util/Map;)V

    .line 15
    new-instance v2, Li5/a;

    invoke-direct {v2, v3, v0, v1}, Li5/a;-><init>(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/android/gms/common/api/GoogleApi;Li5/g;)V

    return-object v2
.end method
