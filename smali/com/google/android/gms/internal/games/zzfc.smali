###### Class com.google.android.gms.internal.games.zzfc (com.google.android.gms.internal.games.zzfc)
.class final Lcom/google/android/gms/internal/games/zzfc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic o:Lcom/google/android/gms/internal/games/zzfd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzfd;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzfc;->o:Lcom/google/android/gms/internal/games/zzfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzfc;->o:Lcom/google/android/gms/internal/games/zzfd;

    invoke-static {v0}, Lcom/google/android/gms/internal/games/zzfd;->b(Lcom/google/android/gms/internal/games/zzfd;)V

    return-void
.end method
