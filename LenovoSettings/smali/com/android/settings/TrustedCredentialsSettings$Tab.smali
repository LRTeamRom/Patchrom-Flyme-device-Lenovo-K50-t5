.class final enum Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;
.super Ljava/lang/Enum;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Tab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

.field public static final enum SYSTEM:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

.field public static final enum USER:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;


# instance fields
.field private final mCheckbox:Z

.field private final mLabel:I

.field private final mList:I

.field private final mProgress:I

.field private final mTag:Ljava/lang/String;

.field private final mView:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 86
    new-instance v0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    const-string v1, "SYSTEM"

    const-string v3, "system"

    const v4, 0x7f0c0b59

    const v5, 0x7f0b016b

    const v6, 0x7f0b016c

    const v7, 0x7f0b016d

    invoke-direct/range {v0 .. v8}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIZ)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    .line 92
    new-instance v6, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    const-string v7, "USER"

    const-string v9, "user"

    const v10, 0x7f0c0b5a

    const v11, 0x7f0b016e

    const v12, 0x7f0b016f

    const v13, 0x7f0b0170

    move v14, v2

    invoke-direct/range {v6 .. v14}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIZ)V

    sput-object v6, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->USER:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->USER:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    aput-object v1, v0, v8

    sput-object v0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIZ)V
    .locals 0
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "label"    # I
    .param p5, "view"    # I
    .param p6, "progress"    # I
    .param p7, "list"    # I
    .param p8, "checkbox"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIIZ)V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    .line 107
    iput p4, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->mLabel:I

    .line 108
    iput p5, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->mView:I

    .line 109
    iput p6, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->mProgress:I

    .line 110
    iput p7, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->mList:I

    .line 111
    iput-boolean p8, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->mCheckbox:Z

    .line 112
    return-void
.end method

.method static synthetic access$1800(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->mCheckbox:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 85
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->mProgress:I

    return v0
.end method

.method static synthetic access$2300(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;Lcom/android/org/conscrypt/TrustedCertificateStore;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Lcom/android/org/conscrypt/TrustedCertificateStore;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->getAliases(Lcom/android/org/conscrypt/TrustedCertificateStore;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Lcom/android/org/conscrypt/TrustedCertificateStore;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->deleted(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->getButtonLabel(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->getButtonConfirmation(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;ZLcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->postOperationUpdate(ZLcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 85
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->mView:I

    return v0
.end method

.method static synthetic access$700(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 85
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->mLabel:I

    return v0
.end method

.method static synthetic access$800(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 85
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->mList:I

    return v0
.end method

.method private deleted(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/lang/String;)Z
    .locals 3
    .param p1, "store"    # Lcom/android/org/conscrypt/TrustedCertificateStore;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 123
    sget-object v1, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$4;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 129
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 125
    :pswitch_0
    invoke-virtual {p1, p2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 127
    :cond_0
    :pswitch_1
    return v0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getAliases(Lcom/android/org/conscrypt/TrustedCertificateStore;)Ljava/util/Set;
    .locals 2
    .param p1, "store"    # Lcom/android/org/conscrypt/TrustedCertificateStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/org/conscrypt/TrustedCertificateStore;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    sget-object v0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$4;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 120
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 116
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->allSystemAliases()Ljava/util/Set;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getButtonConfirmation(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)I
    .locals 2
    .param p1, "certHolder"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 144
    sget-object v0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$4;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 153
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 146
    :pswitch_0
    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const v0, 0x7f0c0b5e

    .line 151
    :goto_0
    return v0

    .line 149
    :cond_0
    const v0, 0x7f0c0b5f

    goto :goto_0

    .line 151
    :pswitch_1
    const v0, 0x7f0c0b60

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getButtonLabel(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)I
    .locals 2
    .param p1, "certHolder"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 132
    sget-object v0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$4;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 141
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 134
    :pswitch_0
    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const v0, 0x7f0c0b5c

    .line 139
    :goto_0
    return v0

    .line 137
    :cond_0
    const v0, 0x7f0c0b5b

    goto :goto_0

    .line 139
    :pswitch_1
    const v0, 0x7f0c0b5d

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private postOperationUpdate(ZLcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 1
    .param p1, "ok"    # Z
    .param p2, "certHolder"    # Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 156
    if-eqz p1, :cond_2

    .line 157
    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;
    invoke-static {p2}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    iget-boolean v0, v0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->mCheckbox:Z

    if-eqz v0, :cond_1

    .line 158
    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p2}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p2, v0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->access$002(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;Z)Z

    .line 162
    :goto_1
    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-static {p2}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->notifyDataSetChanged()V

    .line 167
    :goto_2
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    :cond_1
    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-static {p2}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    move-result-object v0

    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$300(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 165
    :cond_2
    # getter for: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-static {p2}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$CertHolder;)Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    move-result-object v0

    # invokes: Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->load()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$400(Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V

    goto :goto_2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method public static values()[Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    invoke-virtual {v0}, [Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method
