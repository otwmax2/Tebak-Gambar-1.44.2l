###### Class da.j0 (da.j0)
.class public interface abstract Lda/j0;
.super Ljava/lang/Object;
.source "CoroutineExceptionHandler.kt"

# interfaces
.implements Lk9/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lda/j0$a;
    }
.end annotation


# static fields
.field public static final l:Lda/j0$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lda/j0$a;->o:Lda/j0$a;

    sput-object v0, Lda/j0;->l:Lda/j0$a;

    return-void
.end method


# virtual methods
.method public abstract l(Lk9/g;Ljava/lang/Throwable;)V
.end method

###### Class da.j0.a (da.j0$a)
.class public final Lda/j0$a;
.super Ljava/lang/Object;
.source "CoroutineExceptionHandler.kt"

# interfaces
.implements Lk9/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lda/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk9/g$c<",
        "Lda/j0;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic o:Lda/j0$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lda/j0$a;

    invoke-direct {v0}, Lda/j0$a;-><init>()V

    sput-object v0, Lda/j0$a;->o:Lda/j0$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
