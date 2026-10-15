###### Class com.google.android.gms.auth.api.signin.GoogleSignInClient (com.google.android.gms.auth.api.signin.GoogleSignInClient)
.class public Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
.super Lcom/google/android/gms/common/api/GoogleApi;
.source "com.google.android.gms:play-services-auth@@20.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/GoogleApi<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final k:Lcom/google/android/gms/auth/api/signin/b;

.field static l:I
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/signin/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/b;-><init>(Lcom/google/android/gms/auth/api/signin/zba;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->k:Lcom/google/android/gms/auth/api/signin/b;

    const/4 v0, 0x1

    sput v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->l:I

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->c:Lcom/google/android/gms/common/api/Api;

    new-instance v1, Lcom/google/android/gms/common/api/internal/ApiExceptionMapper;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/ApiExceptionMapper;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .registers 5

    .line 2
    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->c:Lcom/google/android/gms/common/api/Api;

    new-instance v1, Lcom/google/android/gms/common/api/internal/ApiExceptionMapper;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/ApiExceptionMapper;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;)V

    return-void
.end method

.method private final declared-synchronized D()I
    .registers 7

    monitor-enter p0

    .line 1
    :try_start_1
    sget v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->l:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-ne v0, v1, :cond_34

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->r()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->p()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    const v5, 0xbdfcb8

    .line 3
    invoke-virtual {v1, v0, v5}, Lcom/google/android/gms/common/GoogleApiAvailability;->j(Landroid/content/Context;I)I

    move-result v5

    if-nez v5, :cond_1e

    sput v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->l:I

    const/4 v0, 0x4

    goto :goto_34

    :cond_1e
    const/4 v4, 0x0

    .line 4
    invoke-virtual {v1, v0, v5, v4}, Lcom/google/android/gms/common/GoogleApiAvailability;->d(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_31

    const-string v1, "com.google.android.gms.auth.api.fallback"

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_31

    sput v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->l:I

    const/4 v0, 0x3

    goto :goto_34

    :cond_31
    sput v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->l:I
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_36

    const/4 v0, 0x2

    .line 6
    :cond_34
    :goto_34
    monitor-exit p0

    return v0

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public A()Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->g()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->r()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->D()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    .line 4
    :goto_12
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/internal/zbm;->f(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Context;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/PendingResultUtil;->b(Lcom/google/android/gms/common/api/PendingResult;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public B()Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->g()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->r()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->D()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    .line 4
    :goto_12
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/internal/zbm;->g(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Context;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/PendingResultUtil;->b(Lcom/google/android/gms/common/api/PendingResult;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public C()Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->g()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->r()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->q()Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->D()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    .line 5
    :goto_18
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/auth/api/signin/internal/zbm;->e(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Z)Lcom/google/android/gms/common/api/OptionalPendingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->k:Lcom/google/android/gms/auth/api/signin/b;

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/PendingResultUtil;->a(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public z()Landroid/content/Intent;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->r()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->D()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_33

    const/4 v1, 0x2

    if-eq v2, v1, :cond_28

    const/4 v1, 0x3

    if-eq v2, v1, :cond_1d

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->q()Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zbm;->b(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->q()Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zbm;->c(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 5
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->q()Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zbm;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_33
    const/4 v0, 0x0

    .line 6
    throw v0
.end method
