###### Class y4.f (y4.f)
.class public final Ly4/f;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ly4/s;

    invoke-direct {v0}, Ly4/s;-><init>()V

    sput-object v0, Ly4/f;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Ly4/r;

    invoke-direct {v0}, Ly4/r;-><init>()V

    sput-object v0, Ly4/f;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
