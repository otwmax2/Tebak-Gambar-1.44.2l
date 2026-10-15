###### Class l3.m (l3.m)
.class public abstract Ll3/m;
.super Ljava/lang/Object;
.source "ProtoEncoderDoNotUse.java"


# static fields
.field private static final a:Lg6/h;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    invoke-static {}, Lg6/h;->a()Lg6/h$a;

    move-result-object v0

    sget-object v1, Ll3/a;->a:Le6/a;

    invoke-virtual {v0, v1}, Lg6/h$a;->d(Le6/a;)Lg6/h$a;

    move-result-object v0

    invoke-virtual {v0}, Lg6/h$a;->c()Lg6/h;

    move-result-object v0

    sput-object v0, Ll3/m;->a:Lg6/h;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)[B
    .registers 2

    .line 1
    sget-object v0, Ll3/m;->a:Lg6/h;

    invoke-virtual {v0, p0}, Lg6/h;->c(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract b()Lo3/a;
.end method
