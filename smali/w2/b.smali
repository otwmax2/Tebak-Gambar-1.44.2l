###### Class w2.b (w2.b)
.class public final Lw2/b;
.super Ljava/lang/Object;
.source "EmptySignature.java"

# interfaces
.implements Lz1/c;


# static fields
.field private static final a:Lw2/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lw2/b;

    invoke-direct {v0}, Lw2/b;-><init>()V

    sput-object v0, Lw2/b;->a:Lw2/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lw2/b;
    .registers 1

    .line 1
    sget-object v0, Lw2/b;->a:Lw2/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    return-void
.end method
