###### Class i7.d (i7.d)
.class public final Li7/d;
.super Li7/f;
.source "FormatException.java"


# static fields
.field private static final q:Li7/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Li7/d;

    invoke-direct {v0}, Li7/d;-><init>()V

    .line 2
    sput-object v0, Li7/d;->q:Li7/d;

    sget-object v1, Li7/f;->p:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Li7/f;-><init>()V

    return-void
.end method

.method public static a()Li7/d;
    .registers 1

    .line 1
    sget-boolean v0, Li7/f;->o:Z

    if-eqz v0, :cond_a

    new-instance v0, Li7/d;

    invoke-direct {v0}, Li7/d;-><init>()V

    return-object v0

    :cond_a
    sget-object v0, Li7/d;->q:Li7/d;

    return-object v0
.end method
