(defrule Menu 
	(not (iffoundChoice ?)) 
	=> 
	(
		printout t crlf crlf crlf 
		" Choose one of the problem areas listed 
		below" crlf crlf 
		" 1.) Discharge from the Eye. " crlf crlf 
 		" 2.) Bulging Eye." crlf crlf 
 		" 3.) Double Vision." crlf crlf 
 		" 4.) Drooping Eyelid." crlf crlf 
 		" 5.) EXIT OF SYSTEM.." crlf crlf crlf 
	 	" Enter no. of your choise: " 
	) 
	(assert (iffoundChoice (read)))
)
	 
;; Rules Discharge from the Eye 
;;------------------R0------------------ 
(defrule Discharge_from_the_Eye
	(iffoundChoice 1) 
 	?retractCh1 <- (iffoundChoice 1) 
 	(not (ifYesNochoise ?)) 
 	=> 
 	(retract ?retractCh1) 
 	(
 		printout t crlf crlf crlf " Are you suffer from eyes 
		red ? (yes | no) " crlf crlf " Your answer: " 
	) 
 	(assert (ifYesNochoise (read)))
) 
;;------------------R1------------------ 
(defrule Discharge_from_the_Eye1 
	(ifYesNochoise yes) 
 	?retractChy <- (ifYesNochoise yes) 
 	(not (ifYesNochoise1 ?)) 
	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf " Are you suffer from eyes 
		swollen eyelids ? (Yes | No) " crlf crlf " Your 
		answer: " 
	) 
 	(assert (ifYesNochoise1 (read)))
 ) 
;;------------------R2------------------ 
(defrule Discharge_from_the_Eye2 
	(ifYesNochoise1 yes) 
	?retractChy <- (ifYesNochoise1 yes) 
 	(not (ifYesNochoise2 ?)) 
 	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf " Are you suffer from pus 
		like discharge and crusting of eyelids on 
		awakening ? (Yes | No) " crlf crlf 
		" Your answer: " 
	) 
	(assert (ifYesNochoise2 (read)))
) 
;;------------------R3------------------ 
(defrule Discharge_from_the_Eye3 
	(ifYesNochoise2 yes) 
 	?retractChy <- (ifYesNochoise2 yes) 
 	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf" You are suffering from 
		Bacterial Conjunctivitis OR blepharitis.. " crlf 
		crlf " Thank you for using my Program... 
		"crlf crlf 
	)
) 
;;------------------R4------------------ 
(defrule Discharge_from_the_Eye4 
 	(ifYesNochoise2 no) 
	?retractChy <- (ifYesNochoise2 no) 
 	(not (ifYesNochoise3 ?)) 
 	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf " Are you suffer from 
		sticky, crusty eyelids" crlf 
 		" red, itchy eyelids" crlf 
 		" loss of eyelashes ? (Yes | 
		No) " crlf crlf 
 		" Your answer: " 
 	) 
	(assert (ifYesNochoise3 (read)))
) 
;;------------------R5------------------
(defrule Discharge_from_the_Eye5 
 	(ifYesNochoise3 yes) 
 	?retractChy <- (ifYesNochoise3 yes) 
	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf " You are suffering from 
		Blepharitis OR Conjunctivitis OR Stye .. " 
		crlf crlf " Thank you for using my 
		Program... "crlf crlf 
	) 
) 
;;------------------R6------------------ 
(defrule Discharge_from_the_Eye6 
	(ifYesNochoise3 no) 
 	?retractChy <- (ifYesNochoise3 no) 
 	(not (ifYesNochoise4 ?)) 
 	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf " Are you suffer from 
		watery discharge" crlf 
 		" fever and sore throat" crlf 
 		" swollen glands in neck ? (Yes | No) " 
		crlf crlf 
 		" Your answer: " 
 	) 
 	(assert (ifYesNochoise4 (read))) 
) 
;;------------------R7------------------ 
(defrule Discharge_from_the_Eye7 
	(ifYesNochoise4 yes) 
 	?retractChy <- (ifYesNochoise4 yes) 
 	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf " You are suffering from 
		Viral Conjunctivitis OR allergic conjunctivitis... " 
 		crlf crlf " Thank you for using my 
		Program... "crlf crlf 
	) 
) 
;;------------------R8------------------ 
(defrule Discharge_from_the_Eye8 
	(ifYesNochoise4 no) 
 	?retractChy <- (ifYesNochoise4 no) 
 	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf " You should be sure for 
		your symptoms.. Try again..." 
 		crlf crlf " Thank you for using my 
		Program... "crlf crlf 
	) 
) 
;;------------------R9------------------ 
(defrule Discharge_from_the_Eye9 
	(ifYesNochoise1 no) 
 	?retractChy <- (ifYesNochoise1 no) 
 	(not (ifYesNochoise5 ?)) 
 	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf " Are you suffer from 
		watery discharge" crlf 
 		" seasonal allergies" crlf 
 		" itching eyes ? (Yes | No) " crlf crlf 
 		" Your answer: " 
 	) 
 	(assert (ifYesNochoise5 (read))) 
) 
;;------------------R10------------------ 
(defrule Discharge_from_the_Eye10 
	(ifYesNochoise5 yes) 
	?retractChy <- (ifYesNochoise5 yes) 
	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf "You are suffering from 
		Allergic Conjunctivitis OR viral conjunctivitis ... " 
 		crlf crlf " Thank you for using my 
		Program... "crlf crlf 
	) 
) 
;;------------------R11------------------ 
(defrule Discharge_from_the_Eye11 
	(ifYesNochoise5 no) 
	?retractChy <- (ifYesNochoise5 no) 
 	(not (ifYesNochoise6 ?)) 
	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf " Are you suffer from 
		fever and sore throat " crlf 
 		" red rash, begins on face then body " 
		crlf 
 		" clear discharge from eye ? (Yes | No) " 
		crlf crlf 
	 	" Your answer: " 
	) 
 	(assert (ifYesNochoise6 (read))) 
) 
;;------------------R12------------------ 
(defrule Discharge_from_the_Eye12 
	(ifYesNochoise6 yes) 
 	?retractChy <- (ifYesNochoise6 yes) 
 	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf " You are suffering from 
		Measles OR Viral Conjunctivitis ... " 
 		crlf crlf " Thank you for using my 
		Program... "crlf crlf 
	) 
) 
;;------------------R13------------------ 
(defrule Discharge_from_the_Eye13 
	(ifYesNochoise6 no) 
 	?retractChy <- (ifYesNochoise6 no) 
 	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf " You should be sure for 
		your symptoms.. Try again..." 
 		crlf crlf " Thank you for using my 
		Program... "crlf crlf 
	) 
) 
;;------------------R14------------------ 
(defrule Discharge_from_the_Eye14 
	( ifYesNochoise no) 
 	?retractChy <- (ifYesNochoise no) 
 	(not (ifYesNochoise7 ?)) 
	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf "Are you suffer from 
		swelling of eyelids, tongue and face ? (yes | no) " 
		crlf crlf 
		" Your answer: " 
	) 
 	(assert (ifYesNochoise7 (read))) 
) 
;;------------------R15------------------ 
(defrule Discharge_from_the_Eye15 
	( ifYesNochoise7 yes) 
 	?retractChy <- (ifYesNochoise7 yes) 
 	(not (ifYesNochoise8 ?)) 
 	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf " Are you suffer from 
		sweating " crlf 
 		" use of new medication, insect bite, new 
		foods" crlf 
 		" rapid heart beat ? (yes | no) " crlf crlf 
 		" Your answer: " 
 	) 
 	(assert (ifYesNochoise8 (read))) 
) 
;;------------------R16------------------ 
(defrule Discharge_from_the_Eye16 
	( ifYesNochoise8 yes) 
 	?retractChy <- (ifYesNochoise8 yes) 
 	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf " You are suffering from 
		Allergy OR Anaphylaxis ... " 
 		crlf crlf " Thank you for using my 
		Program... "crlf crlf 
	) 
) 
;;------------------R17------------------ 
(defrule Discharge_from_the_Eye17 
	( ifYesNochoise8 no) 
 	?retractChy <- (ifYesNochoise8 no) 
	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf " You should be sure for 
		your symptoms.. Try again..." 
 		crlf crlf " Thank you for using my 
		Program... "crlf crlf 
	) 
) 
;;------------------R18------------------ 
(defrule Discharge_from_the_Eye18 
	( ifYesNochoise7 no) 
 	?retractChy <- (ifYesNochoise7 no) 
 	(not (ifYesNochoise9 ?)) 
 	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf " Are you suffer from eyes 
		red with watery discharge ? (yes | no) " crlf crlf 
 		" Your answer: " 
 	) 		 
 	(assert (ifYesNochoise9 (read))) 
) 
;;------------------R19------------------ 
(defrule Discharge_from_the_Eye19 
	( ifYesNochoise9 yes) 
 	?retractChy <- (ifYesNochoise9 yes) 
 	(not (ifYesNochoise10 ?)) 
 	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf " Are you suffer from 
		headache centered around eye "crlf 
 		" headaches usually lasting 15-30 minutes 
		"crlf 
 		" more common in men "crlf 
 		" nasal discharge ? (yes | no) " crlf crlf 
 		" Your answer: " ) 
 		(assert (ifYesNochoise10 (read))) 
) 
;;------------------R20------------------ 
(defrule Discharge_from_the_Eye20 
	( ifYesNochoise10 yes) 
 	?retractChy <- (ifYesNochoise10 yes) 
 	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf " You are suffering from 
		Cluster Headache OR Migraine Headache OR 
		Allergic Rhinitis ... " 
 		crlf crlf " Thank you for using my 
		Program... "crlf crlf 
	) 
) 
;;------------------R21------------------ 
(defrule Discharge_from_the_Eye21 
	( ifYesNochoise10 no) 
 	?retractChy <- (ifYesNochoise10 no) 
 	(not (ifYesNochoise11 ?)) 
 	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf " Are you suffer from 
		more common in elderly people "crlf 
		" may develop pus like drainage from eye ? 
		(yes | no) " crlf crlf 
 		" Your answer: " 
 	) 
 	(assert (ifYesNochoise11 (read))) 
) 
;;------------------R22------------------ 
(defrule Discharge_from_the_Eye22 
	( ifYesNochoise11 yes) 
 	?retractChy <- (ifYesNochoise11 yes) 
 	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf " You are suffering from 
		Dacryocystitis OR Stye OR Conjunctivitis..." 
		crlf crlf " Thank you for using my 
		Program... "crlf crlf 
	) 
) 
;;------------------R23------------------ 
(defrule Discharge_from_the_Eye23 
	( ifYesNochoise11 no) 
 	?retractChy <- (ifYesNochoise11 no) 
 	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf " You should be sure for 
		your symptoms.." 
 		crlf crlf " Thank you for using my 
		Program... "crlf crlf 
	) 
) 
;;------------------R24------------------ 
(defrule Discharge_from_the_Eye24 
	( ifYesNochoise9 no) 
	?retractChy <- (ifYesNochoise9 no) 
	(not (ifYesNochoise12 ?)) 
	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf " Are you suffer from 
		blurred vision ? (yes | no) " crlf crlf 
 		" Your answer: " 
 	) 
 	(assert (ifYesNochoise12 (read))) 
) 
;;------------------R25------------------ 
(defrule Discharge_from_the_Eye25 
	( ifYesNochoise12 yes) 
 	?retractChy <- (ifYesNochoise12 yes) 
 	(not (ifYesNochoise13 ?)) 
 	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf " Are you suffer from pain 
		and redness "crlf 
 		" excessive tearing " crlf 
 		" sensitivity to light" crlf 
 		" feeling of foreign body in eye ? (yes | no) " 
		crlf crlf 
 		" Your answer: " 
 	) 
	(assert (ifYesNochoise13 (read))) 
) 
;;------------------R26------------------ 
(defrule Discharge_from_the_Eye26 
	( ifYesNochoise13 yes) 
 	?retractChy <- (ifYesNochoise13 yes) 
 	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf "You are suffering from 
		Corneal Abrasion OR Corneal Ulcer... " 
 		crlf crlf " Thank you for using my 
		Program... "crlf crlf 
	) 
) 
;;------------------R27------------------ 
(defrule Discharge_from_the_Eye27 
	( ifYesNochoise13 no) 
 	?retractChy <- (ifYesNochoise13 no) 
 	(not (ifYesNochoise14 ?)) 
 	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf " Are you suffer from eyes 
		red lump on the edge of eyelid "crlf 
 		" lump may drain pus " crlf 
 		" painful lump ? (yes | no) " crlf crlf 
 		" Your answer: " 
 	) 
	(assert (ifYesNochoise14 (read))) 
) 
;;------------------R28------------------ 
(defrule Discharge_from_the_Eye28 
	( ifYesNochoise14 yes) 
 	?retractChy <- (ifYesNochoise14 yes) 
 	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf "You are suffering from 
		Stye OR Chalazion... " 
 		crlf crlf " Thank you for using my 
		Program... "crlf crlf 
	) 
) 
;;------------------R29------------------ 
(defrule Discharge_from_the_Eye29 
	( ifYesNochoise12 no) 
 	?retractChy <- (ifYesNochoise12 no) 
 	(not (ifYesNochoise15 ?)) 
 	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf " Are you suffer from 
		weakness of one side of the face "crlf 
 		" recent viral illness " crlf 
 		" drooping of lower eyelid " crlf 
 		" difficulty closing eyelid " crlf 
 		" discharge from the eye ? (yes| no) " crlf 
		crlf 
 		" Your answer: " 
 	) 
 	(assert (ifYesNochoise15 (read))) 
) 
;;------------------R30------------------ 
(defrule Discharge_from_the_Eye30 
	( ifYesNochoise15 yes) 
 	?retractChy <- (ifYesNochoise15 yes) 
 	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf "You are suffering from 
		Bell's Palsy OR Multiple Sclerosis OR Stroke OR 
		Acoustic Neuroma..." 
 		crlf crlf " Thank you for using my 
		Program... "crlf crlf 
	) 
) 
;;------------------R31------------------ 
(defrule Discharge_from_the_Eye31 
 	( ifYesNochoise15 no) 
 	?retractChy <- (ifYesNochoise15 no) 
 	=>
  	(retract ?retractChy) 
	(
		printout t crlf crlf crlf " You should be sure for 
		your symptoms.. Try again..." 
 		crlf crlf " Thank you for using my 
		Program... "crlf crlf 
	) 
) 
;;------------------R32------------------ 
(defrule Discharge_from_the_Eye32 
	( ifYesNochoise14 no) 
 	?retractChy <- (ifYesNochoise14 no) 
 	=> 
 	(retract ?retractChy) 
 	(
 		printout t crlf crlf crlf " You should be sure for 
		your symptoms.. Try again..." 
 		crlf crlf " Thank you for using my 
		Program... "crlf crlf 
	) 
)
