###### Class da.y0 (da.y0)
.class final Lda/y0;
.super Ljava/lang/RuntimeException;
.source "CoroutineExceptionHandlerImpl.kt"


# instance fields
.field private final o:Lk9/g;


# direct methods
.method public constructor <init>(Lk9/g;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lda/y0;->o:Lk9/g;

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object p0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lda/y0;->o:Lk9/g;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
