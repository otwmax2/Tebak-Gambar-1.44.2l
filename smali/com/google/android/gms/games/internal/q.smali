###### Class com.google.android.gms.games.internal.q (com.google.android.gms.games.internal.q)
.class final Lcom/google/android/gms/games/internal/q;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/games/internal/q;->a:Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/games/internal/q;->a:Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;->r1()V

    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/games/internal/q;->a:Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;->r1()V

    return-void
.end method
